const allSections = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];

export async function onRequestGet(context) {
    const origin = context.request.url.split(context.functionPath)[0];
    const headers = { "Access-Control-Allow-Origin": origin };
    const section = context.params.section;
    const db = context.env.DB;

    if (!allSections.includes(section)) {
        return new Response("Error 400: Invalid Section", {
            status: 400,
            headers: headers
        });
    }

    const tableList = await db.prepare(`SELECT name FROM sqlite_master WHERE type='table' AND name='sec${section}';`).all();

    if (tableList.results[0]?.name !== `sec${section}`) {
        return new Response(`Error 404: Routine Not Found For Section ${section}`, {
            status: 404,
            headers: headers
        });
    }

    const sql = `
    SELECT 'sec${section}'.id, day_name, start_time, end_time, subject_name, teacher_name, room_number
    FROM 'sec${section}'
    INNER JOIN days ON 'sec${section}'.day_id = days.id
    INNER JOIN times ON 'sec${section}'.time_id = times.id
    INNER JOIN subjects ON 'sec${section}'.subject_id = subjects.id
    INNER JOIN teachers ON 'sec${section}'.teacher_id = teachers.id
    INNER JOIN rooms ON 'sec${section}'.room_id = rooms.id;
    `;

    const data = await db.prepare(sql).all();

    return new Response(JSON.stringify(data, null, 2), {
        status: 200,
        headers: headers
    });
}