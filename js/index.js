var news = {};
if(localStorage["NewsCachedTime"] + 60*60*1000 > Date.now()) news = JSON.parse(localStorage["NewsCache"]);
else fetchNews();

function DynamicLoad(step) {
    switch(step) {
        case 1:
            document.getElementsByClassName("TodayTime")[0].innerHTML = moment().format('ll');
            document.getElementsByClassName("TodayTime")[1].innerHTML = moment().format('dddd');
            break;
        case 2:
            setTimeout(()=>placeNews(), 500);
            break;
        case 3:
            placeCurriculum();
            break;
    }
}
function fetchNews() {
    
}
function placeNews() {
    if(!news.totalResults) {
        document.getElementsByClassName("TodayNews")[0].innerHTML = "最近沒有發布任何新聞";
        return;
    }
    for(var i = 0; i < news.totalResults; i++) {
        var newsContainer = document.createElement("div");
        var newsImage = document.createElement("img");
        var newsInfo = document.createElement("div");
        var newsTitle = document.createElement("h3");
        var newsDescription = document.createElement("p");
        
        newsContainer.classList.add("w3-round-large", "w3-border", "w3-margin");
        newsContainer.style.overflow = "hidden";
        newsImage.src = news.articles[i].urlToImage || "";
        newsImage.style.width = "100%";
        newsInfo.classList.add("w3-container");
        newsTitle.style.fontSize = "1.4rem";
        newsTitle.innerHTML = news.articles[i].title;
        newsDescription.innerHTML = news.articles[i].description;
        
        newsInfo.appendChild(newsTitle);
        newsInfo.appendChild(newsDescription);
        newsContainer.appendChild(newsImage);
        newsContainer.appendChild(newsInfo);
        document.getElementsByClassName("TodayNews")[0].appendChild(newsContainer);
    }
}
function placeCurriculum() {
    fetch("curriculums/vocation.json")
    .then(r=>r.json())
    .then(a=>{
        let standard = [[810, 900],[910, 1000],[1010, 1100],[1110, 1200],[1300, 1350],[1400, 1450],[1510, 1600],[1610, 1700]];
        let d = moment().day();
        let n = moment().hour() * 100 + moment().minute();
        let nl;
        for(var i = 0; i < standard.length; i++)
            if(standard[i][0] <= n && standard[i][1] > n)
                nl = i;
        for(var i = 0; i < a[d].length; i++) {
            var item = document.createElement("div");
            var time = document.createElement("span");
            var _name = document.createElement("p");
            item.classList.add("curriculum-item");
            item.style.left = "" + (Math.random()*40 - Math.random()*50) + "%";
            time.classList.add("curriculum-time");
            _name.classList.add("curriculum-name");
            time.innerHTML = ("" + parseInt(standard[i][0] / 100)).padStart(2, "0") + ":" + String(standard[i][0] % 100).padStart(2, "0") + "~" + ("" + parseInt(standard[i][1] / 100)).padStart(2, "0") + ":" + String(standard[i][1] % 100).padStart(2, "0");
            _name.innerHTML = a[d][i];
            item.appendChild(time);
            item.appendChild(_name);
            document.getElementsByClassName("curriculum-container")[0].appendChild(item);
            document.getElementsByClassName("curriculum-container")[0].append(document.createElement("br"));
        }
    });
}