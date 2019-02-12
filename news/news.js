var nlll = "pqlau"; // News Lists List Location
var nll = xhr.json("https://api.myjson.com/bins/"+nlll);
var nl = getList(nll[nll.length-1]);
var endN;
if(nl.length-6 >= 0) {
    endN = nl.length-6;
} else {
    endN = 0;
}
for(var i = nl.length-1; i >= endN; i--) {
    var n = getNews(nl[i]);
    drawNews(n.title, n.content, n.author, new Date(n.time).toLocaleString());
}

function getList(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
function getNews(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
function drawNews(title, content, author, time) {
    var newsBlock = document.getElementById("newsBlock");
    var newsDiv = document.createElement("div");
    var newsTitle = document.createElement("h2");
    var newsContent = document.createElement("p");
    var newsFooter = document.createElement("p");
    
    newsTitle.innerHTML = title;
    newsContent.innerHTML = content;
    newsFooter.innerHTML = "Author: "+author+"\t\t"+time;
	newsDiv.style.borderStyle = "solid none none none";
	newsDiv.style.borderWidths = "0.15rem";
    newsFooter.style.whiteSpace = "pre";
    
    newsDiv.appendChild(newsTitle);
    newsDiv.appendChild(newsContent);
    newsDiv.appendChild(newsFooter);
    newsBlock.appendChild(newsDiv);
}
