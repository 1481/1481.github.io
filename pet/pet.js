// init data
var speedUp = 1;
var petsName = {
    "dog": ["狗", "狗窩"],
    "cat": ["貓", "貓砂"],
    "fish": ["魚", "魚缸"],
    "frog": ["青蛙", "兩棲寵物箱"],
    "bird": ["鳥", "鳥籠"],
    "hippo": ["河馬", "後院"]
};
var ls = localStorage;
// new player
if(!ls.petInfo) {
    var petInfo = {
        "pet": "dog",
        "dog": {
            "level": 0,
            "exp": 0,
            "clear": 0,
            "feed": 0,
            "play": 0,
            "power": 1,
            "latest": 0
        },
        "cat": {
            "level": 0,
            "exp": 0,
            "clear": 0,
            "feed": 0,
            "play": 0,
            "power": 1,
            "latest": 0
        },
        "fish": {
            "level": 0,
            "exp": 0,
            "clear": 0,
            "feed": 0,
            "play": 0,
            "power": 1,
            "latest": 0
        },
        "frog": {
            "level": 0,
            "exp": 0,
            "clear": 0,
            "feed": 0,
            "play": 0,
            "power": 1,
            "latest": 0
        },
        "bird": {
            "level": 0,
            "exp": 0,
            "clear": 0,
            "feed": 0,
            "play": 0,
            "power": 1,
            "latest": 0
        },
        "hippo": {
            "level": 0,
            "exp": 0,
            "clear": 0,
            "feed": 0,
            "play": 0,
            "power": 1,
            "latest": 0
        }
    };
    ls.petInfo = JSON.stringify(petInfo);
} else {
    var petInfo = JSON.parse(ls.petInfo);
}
// select pet and put the image
var pet = petInfo.pet;
var pn = pet;
if(pn=="bird") pn = "dove";
document.getElementById("animalImg").classList.add("fa-"+pn);
// init UI
upgrade();
function checkUsage() {
    if(petInfo[pet].latest + (60*60*1000) <= Date.now()) {
        petInfo[pet].latest = Date.now();
        return 1;
    } else {
        alert("你還需要" + Math.floor(((petInfo[pet].latest + (60*60*1000)) - Date.now())/60000) + "分鐘才可對你的" + petsName[pet][0] + "進行操作喔！");
        return 0;
    }
}
// button functions
function clears() {
    if(!checkUsage()) return;
    petInfo[pet]["clear"]++;
    getExp();
    update();
    showInfo();
}
function feed() {
    if(!checkUsage()) return;
    petInfo[pet].feed++;
    getExp();
    update();
    showInfo();
}
function play() {
    if(!checkUsage()) return;
    petInfo[pet].play++;
    getExp();
    update();
    showInfo();
}
// sync data
function update() {
    ls.petInfo = JSON.stringify(petInfo);
    document.getElementById("level").value = petInfo[pet].level;
    document.getElementById("exp").value = petInfo[pet].exp;
    
    document.getElementById("power").value = petInfo[pet].power;
}
// show informations
function showInfo() {
    alert("你已經餵了你的"+petsName[pet][0]+petInfo[pet].feed+"次\n你已經清理你的"+petsName[pet][1]+petInfo[pet]["clear"]+"次\n你已經跟你的"+petsName[pet][0]+"玩"+petInfo[pet].play+"次");
    if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 100) {
        alert("你真是個宇宙無敵超級好主人\n你看！好到你的"+petsName[pet][0]+"都發光了耶！");
    } else if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 90) {
        alert("good");
    } else if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 80) {
        alert("good");
    } else if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 70) {
        alert("good");
    } else if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 60) {
        alert("你真是個好到無人能比的好主人");
    } else if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 50) {
        alert("你真是個好到不能再好的好主人");
    } else if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 40) {
        alert("你真是個超級超級超級好主人");
    } else if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 30) {
        alert("你真是個超級超級好主人");
    } else if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 20) {
        alert("你真是個超級好主人");
    } else if(petInfo[pet].feed+petInfo[pet].play+petInfo[pet]["clear"] >= 100 * 10) {
        alert("你真是個好主人");
    }
    if(Math.floor(petInfo[pet].exp/100)>petInfo[pet].level) {
        petInfo[pet].level = Math.floor(petInfo[pet].exp/100);
        petInfo[pet].exp -= petInfo[pet].level * 100;
    }
    upgrade();
}
// update UI
function upgrade() {
    var a = document.getElementById('animalImg');
    if(petInfo[pet].level>=100) {
        a.classList.add("super");
    } else {
        a.classList.add("L"+Math.floor(petInfo[pet].level/10));
    }
    for(var i = 0; i < document.getElementsByClassName("petsbox").length; i++) {
        var x = document.getElementsByClassName("petsbox")[i];
        if(petInfo[x.title].level>=100) {
            x.classList.add("super");
        } else {
            x.classList.add("L"+Math.floor(petInfo[x.title].level));
        }
    }
    var x = document.getElementById("exp");
    x.max = (petInfo[pet].level + 1) * 100;
    if(petInfo[pet].power==3) {
        document.getElementById("power").classList.add("super");
    }
    update();
}
// change pet and reload page
function changePet(x) {
    petInfo.pet = x;
    update();
    window.scrollTo(0, 0);
    location.reload();
}
// get Exp
function getExp() {
    petInfo[pet].exp += speedUp * petInfo[pet].power * (10+Math.floor(Math.random()*20));
    gainPower();
}
function gainPower() {
    if(petInfo[pet].power == 1) {
        petInfo[pet].power = 1.25 + Math.floor(Math.random()*4)/4;
    } else {
        petInfo[pet].power += 0.1 + Math.floor(Math.random()*5)/10;
    }
    if(petInfo[pet].power>=3) petInfo[pet].power = 3;
}
