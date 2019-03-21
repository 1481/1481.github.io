var loadingMsg = document.createElement("div");
loadingMsg.style.display = "none";
loadingMsg.style.position = "fixed";
loadingMsg.style.top = "2.4rem";
loadingMsg.style.left = "0.2rem";
loadingMsg.style.zIndex = "9999";
loadingMsg.innerHTML = "Loading...";
document.body.appendChild(loadingMsg);
window.addEventListener("pageshow", function() {loadingMsg.style.display = "none";});
function goPage(url) {
    loadingMsg.style.display = "";
    location.href = url;
}
// Offline Detect
var off = document.createElement("p");
off.style.display = "none";
off.style.position = "fixed";
off.style.top = "1.6rem";
off.id = "ifOffline";
document.body.appendChild(off);
window.addEventListener("offline", function(e) { 
    var off = document.getElementById("ifOffline");
    off.style.color = "red";
    off.innerHTML = "You are OFFLINE now. Please connect the Internet.";
    off.style.display = "block";
    document.getElementsByTagName("body")[0].ononline = function() {
        off.style.color = "SpringGreen";
        off.innerHTML = "You are ONLINE now.";
        setTimeout(function() {off.style.display = "none";}, 2000);
    };
});
