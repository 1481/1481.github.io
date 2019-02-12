var nlll = "pqlau"; // News Lists List Location
var nll = xhr.json("https://api.myjson.com/bins/"+nlll);
var nl = getList(nll[0]);
for(var i = 0; i < nl.length; i++) {
    var n = getNews(nl[i]);
}

function getList(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
function getNews(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
