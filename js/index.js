function DynamicLoad(step) {
    switch(step) {
        case 1:
            document.getElementsByClassName("TodayTime")[0].innerHTML = moment().format('ll');
            document.getElementsByClassName("TodayTime")[1].innerHTML = moment().format('dddd');
            break;
        case 2:
            GetWeather();
            break;
        case 3:
            placeCurriculum();
            break;
    }
}

function Weather() {
    if(!localStorage["WeatherCachedTime"] || parseInt(localStorage["WeatherCachedTime"])+10*60*1000 < Date.now())
        return (Fetch("https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-061?Authorization=CWB-32C02D9E-DEB3-4D3A-807A-7B2C816EB21C&locationName=%E5%A4%A7%E5%AE%89%E5%8D%80&elementName=Wx,AT,T,CI,WeatherDescription,PoP6h").then(r=>r.json()));
    else
        return new Promise(x=>x(JSON.parse(localStorage["WeatherCache"])));
}
function GetWeather() {
    Weather().then(weather => {
        localStorage["WeatherCache"] = JSON.stringify(weather);
        localStorage["WeatherCachedTime"] = String(Date.now());
        var wx = parseInt(weather.records.locations[0].location[0].weatherElement[0].time[0].elementValue[1].value);
        var wi = document.createElement("i");
        wi.classList.add("fas", "w3-margin-left");
        if(wx === 1) {
            wi.classList.add("fa-sun", "fa-spin");
        }
        if(wx >= 2 && wx <= 4) {
            wi.classList.add("fa-cloud-sun");
        }
        if(wx >= 5 && wx <= 7) {
            wi.classList.add("fa-cloud");
        }
        if(wx === 8) {
            wi.classList.add("fa-cloud-sun-rain");
        }
        if(wx >= 9 && wx <= 11) {
            wi.classList.add("fa-cloud-rain");
        }
        wi.onclick = function(){Swal.fire(weather.records.locations[0].location[0].weatherElement[4].time[0].elementValue[0].value)};
        document.getElementsByClassName("TodayTime")[1].appendChild(wi);
        var temp = document.createElement("span");
        temp.innerHTML = " "+weather.records.locations[0].location[0].weatherElement[2].time[0].elementValue[0].value+"°C";
        temp.onclick = function(){Swal.fire(weather.records.locations[0].location[0].weatherElement[4].time[0].elementValue[0].value)};
        document.getElementsByClassName("TodayTime")[1].appendChild(temp);
    })
}
function placeCurriculum() {
    Fetch("curriculums/108.1.json?static=1")
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
            if(last_pos>0) {
                time.classList.add("right");
                _name.classList.add("right");
                time.style.animationDelay = String(1.8 + i*0.2)+"s";
                _name.style.animationDelay = String(1.8 + i*0.2)+"s";
            }
            else {
                time.classList.add("left");
                _name.classList.add("left");
                time.style.animationDelay = String(1.8 + i*0.2)+"s";
                _name.style.animationDelay = String(1.8 + i*0.2)+"s";
            }
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
