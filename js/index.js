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
        var newsAuthor = document.createElement("span");
        var newsTimestamp = document.createElement("span");
        var wrapper = document.createElement("div");
        
        newsContainer.classList.add("w3-round-large", "w3-border", "w3-margin", "News");
        newsContainer.style.overflow = "hidden";
        newsImage.src = news.articles[i].urlToImage ? news.articles[i].urlToImage : "https://fakeimg.pl/600x400/bfff00/00a2ff/?text=%E6%96%B0%E8%81%9E&font=noto";
        newsImage.style.width = "100%";
        newsImage.style.objectFit = "cover";
        newsImage.style.objectPosition = "top";
        newsImage.style.maxHeight = "400px";
        newsInfo.classList.add("w3-container");
        newsTitle.style.fontSize = "1.4rem";
        newsTitle.innerHTML = news.articles[i].title;
        newsDescription.innerHTML = news.articles[i].description;
        newsAuthor.style.float = "left";
        newsTimestamp.style.float = "right";
        newsAuthor.innerHTML = news.articles[i].author;
        newsTimestamp.innerHTML = news.articles[i].time;
        
        newsInfo.appendChild(newsTitle);
        newsInfo.appendChild(newsDescription);
        newsInfo.appendChild(newsAuthor);
        newsInfo.appendChild(newsTimestamp);
        newsContainer.appendChild(newsImage);
        newsContainer.appendChild(newsInfo);
        wrapper.appendChild(newsContainer);
        document.getElementsByClassName("TodayNews")[0].appendChild(wrapper);
    }
}
function placeCurriculum() {
    Fetch("curriculums/vocation.json")
    .then(r=>r.json())
    .then(a=>{
        let standard = [[810, 900],[910, 1000],[1010, 1100],[1110, 1200],[1300, 1350],[1400, 1450],[1510, 1600],[1610, 1700]];
        let d = moment().day();
        let n = moment().hour() * 100 + moment().minute();
        let nl;
        for(var i = 0; i < standard.length; i++)
            if(standard[i][0] <= n && standard[i][1] > n)
                nl = i;
        var last_pos = 0;
        for(var i = 0; i < a[d].length; i++) {
            var item = document.createElement("div");
            var time = document.createElement("span");
            var _name = document.createElement("p");
            
            if(i < nl) item.classList.add("curriculum-passed");
            if(i == nl) item.classList.add("curriculum-now");
            item.classList.add("curriculum-item");
            last_pos = (last_pos==0) ? (Math.random()*40 - Math.random()*40) : ((last_pos>0) ? (-Math.random()*40) : (Math.random()*40));
            item.style.left = "" + last_pos + "%";
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
