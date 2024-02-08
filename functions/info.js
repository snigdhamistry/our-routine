export async function onRequest(context) {
    const origin = context.request.url.split(context.functionPath)[0];
    const headers = { "Access-Control-Allow-Origin": "*" };

    const info = {
        "origin": origin,
        "method": context.request.method,
        "httpProtocol": context.request.cf.httpProtocol,
        "tlsVersion": context.request.cf.tlsVersion,
        "colo": context.request.cf.colo,
        "isp": context.request.cf.asOrganization,
        "lat": context.request.cf.latitude,
        "long": context.request.cf.longitude,
        "postalCode": context.request.cf.postalCode,
        "city": context.request.cf.city,
        "region": context.request.cf.region,
        "country": context.request.cf.country,
        "continent": context.request.cf.continent,
        "timezone": context.request.cf.timezone
    };

    return new Response(JSON.stringify(info, null, 2), {
        status: 200,
        headers: headers
    });
}