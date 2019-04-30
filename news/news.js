var config = {
        apiKey: "AIzaSyAW060kfFPzaSKzflp9eXesmyn-GMYj-M8",
        authDomain: "hsnu-1481-website.firebaseapp.com",
        databaseURL: "https://hsnu-1481-website.firebaseio.com",
        projectId: "hsnu-1481-website",
        storageBucket: "hsnu-1481-website.appspot.com",
        messagingSenderId: "405025421965"
    };
firebase.initializeApp(config);
var db = firebase.firestore();
db.collection("NEWS").orderBy("Time", "desc").limit(6).get().then(function(querySnapshot) {
    querySnapshot.forEach(function(doc) {
        var article = doc.data();
        drawNews(article.Title, article.Content, article.Author, article.Time.toDate().toLocaleString());
        console.log(doc.id, " => ", doc.data());
    })
});

/*
var nl = getList("1h3p6u");
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

function getNews(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
function getList(loc) {
    return xhr.json("https://api.myjson.com/bins/"+loc);
}
*/
function drawNews(title, content, author, time) {
    var newsBlock = document.getElementById("newsBlock");
    var newsDiv = document.createElement("div");
    var newsTitle = document.createElement("h2");
    var newsContent = document.createElement("p");
    var newsFooter = document.createElement("p");
    
    newsTitle.innerHTML = title;
    newsContent.innerHTML = content;
    newsFooter.innerHTML = "Author: "+author+"\t\t"+time;
    newsDiv.className = "News w3-card w3-round-large w3-white w3-margin";
    newsFooter.style.whiteSpace = "pre";
    
    newsDiv.appendChild(newsTitle);
    newsDiv.appendChild(newsContent);
    newsDiv.appendChild(newsFooter);
    newsBlock.appendChild(newsDiv);
}
