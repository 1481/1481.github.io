var chosen;
var nid = (!urldata("id").includes("1481.tk/So-Hateful/") ? urldata("id") : -1);
nid = parseInt(nid);
if(nid<0) {
    location.href="./";
}
var nlll = "pqlau"; // News Lists List Location
//var nll = xhr.json("https://api.myjson.com/bins/"+nlll);
var nl = getList("ojq3a");

var n = getNews(nl[nid]);
drawNews(n.title, n.content, n.author, new Date(n.time).toLocaleString(), n, nl[nid], nid);

document.querySelector('a').addEventListener('click', function(e) {e.stopPropagation();}, false);

function getList(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
function getNews(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
function drawNews(title, content, author, time, n = {}, id = "", number = 0) {
    var newsBlock = document.getElementById("newsBlock");
    var newsDiv = document.createElement("div");
    var newsId = document.createElement("p");
    var newsTitle = document.createElement("h2");
    var newsContent = document.createElement("p");
    var newsFooter = document.createElement("p");

    newsId.innerHTML = "#" + number;
    newsId.style.position = "absolute";
    newsId.style.margin = "1rem";

    newsTitle.innerHTML = title;
    newsContent.innerHTML = content;
    newsFooter.innerHTML = "Author: "+author+"\t\t"+time;
    newsDiv.className = "News w3-card w3-round-large w3-white w3-margin";
    newsFooter.style.whiteSpace = "pre";

    newsDiv.appendChild(newsId);
    newsDiv.appendChild(newsTitle);
    newsDiv.appendChild(newsContent);
    newsDiv.appendChild(newsFooter);
    if(n.comments) {
        newsDiv.innerHTML += '<hr color="lightgray" style="box-shadow: 0 3px 6px 0 rgb(0,0,0);">';
        loadComments(n, newsDiv);
    }
    newsDiv.setAttribute('data-id', id);
    newsDiv.onclick = function() {chosen = this.dataset.id; elm.id("comment-div").style.display="block";};
    newsBlock.appendChild(newsDiv);
}

// Comments Plugin
function uploadComment() {
    var comment = {
        "content": convertURL(elm.id("comment-content")),
        "user": elm.id("comment-user").value,
        "time": new Date().toJSON()
    };
    if(!comment.content || !comment.user) {
        return;
    }
    var news = "https://api.myjson.com/bins/" + chosen;
    var x = xhr.json(news);
    if(typeof(x.comments) == "undefined") {
        x.comments = [];
    }
    x.comments.push(comment);
    console.log(xhr.put(news, JSON.stringify(x)));
    reloadNews();
}
function loadComments(newsObj, mom) {
    var cq = 0;
    var comments = newsObj.comments;
    for(var i =  0; i < comments.length; i++) {
        let l = document.createElement("div");
        let c = document.createElement("span");
        let u = document.createElement("span");
        l.classList.add("comment");
        c.style.float = "left";
        c.style.clear = "left";
        c.style.textAlign = "left";
        u.style.float = "right";
        u.style.color = "gray";
        c.innerHTML = comments[i].content;
        u.innerHTML = " -- " + comments[i].user + " - " + new Date(comments[i].time).toLocaleString();
        l.appendChild(c);
        l.appendChild(u);
        mom.appendChild(l);
        cq++;
    }
    return cq;
}
