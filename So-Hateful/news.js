var chosen;
var p = ((urldata("p")!="://1481.tk/So-Hateful/") ? urldata("p") : 1);
var nlll = "pqlau"; // News Lists List Location
var nll = xhr.json("https://api.myjson.com/bins/"+nlll);
var nl = getList(nll[nll.length-1]);

reloadNews();
document.getElementById("pPage").href = "javascript:goPage('?p="+((p!=1) ? (parseInt(p)-1) : 1) + "')";
document.getElementById("nPage").href = "javascript:goPage('?p="+(parseInt(p)+1) + "')";
document.getElementById("pPageb").href = document.getElementById("pPage").href;
document.getElementById("nPageb").href = document.getElementById("nPage").href;


function getList(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
function getNews(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
function drawNews(title, content, author, time, n = {}, id = "", number = 0) {
    var newsBlock = document.getElementById("newsBlock");
    var newsDiv = document.createElement("div");
    var newsId = document.createElement("a");
    var newsTitle = document.createElement("h2");
    var newsContent = document.createElement("p");
    var newsFooter = document.createElement("p");
    var newsShare = document.createElement("a");

    newsId.classList.add("NIDs");
    newsId.innerHTML = "#" + number;
    newsId.style.display = "block";
    newsId.style.position = "absolute";
    newsId.style.color = "#3a85ff";
    newsId.style.margin = "1rem";
    newsId.style.cursor = "pointer";
    newsId.href = "javascript:window.open('https://1481.tk/So-Hateful/share?id="+number+"', '_blank');setTimeout(function(){elm.id('comment-div').style.display='none'}, 5);";
    
    newsShare.classList.add("fas", "fa-share-square", "SHAREARTI");
    newsShare.style.display = "block";
    newsShare.style.position = "absolute";
    newsShare.style.color = "#383a3c";
    newsShare.style.margin = "1rem";
    newsShare.style.right = "1rem";
    newsShare.style.cursor = "pointer";
    newsShare.href = "javascript:share("+number+");setTimeout(function(){elm.id('comment-div').style.display='none'}, 5);";

    newsTitle.innerHTML = title;
    newsContent.innerHTML = content;
    newsFooter.innerHTML = "Author: "+author+"\t\t"+time;
    newsDiv.className = "News w3-card w3-round-large w3-white w3-margin";
    newsFooter.style.whiteSpace = "pre";

    newsDiv.appendChild(newsId);
    newsDiv.appendChild(newsShare);
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
function reloadNews() {
    document.getElementById("newsBlock").innerHTML = "";
    drawNews("歡迎投稿", "<h3>歡迎任何人投稿: <a href='javascript:location.href=\"submit\";setTimeout(function(){elm.id(\"comment-div\").style.display=\"none\";}, 5);' style='color: blue !important'>我要投稿！</a></h3>", "ADMIN", "置頂文章");
    for(var i = nl.length-(1+6*(p-1)); i >= nl.length-(1+6*p); i--) {
        if(i < 0) {break;}
        var n = getNews(nl[i]);
        drawNews(n.title, n.content, n.author, new Date(n.time).toLocaleString(), n, nl[i], i);
    }
    document.getElementsByClassName("NIDs")[0].style.display = "none";
    document.getElementsByClassName("SHAREARTI")[0].style.display = "none";
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
    elm.id("comment-content").value = "";
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
        c.style.textAlign = "left";
        c.style.clear = "left";
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
