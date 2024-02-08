export function onRequest(context) {
    const origin = context.request.url.split(context.functionPath)[0];
    const headers = { "Access-Control-Allow-Origin": origin };

    return new Response(`
    Routes For ${origin}

    |-- /
    |-- info
    |-- api
        |__ /        <---
        |__ section
            |___ /
            |___ 5
            |___ 6
    `,
        {
            status: 200,
            headers: headers
        });
}