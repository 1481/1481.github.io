// local auth
if(!localStorage["local-auth"])
    localStorage["local-auth"] = JSON.stringify({
        login: false,
        username: null,
        uid: null
    });
var LA = JSON.parse(localStorage["local-auth"]);
