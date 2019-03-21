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

window.addEventListener("offline", function(e) { 
    var off = document.createElement("p");
    off.innerHTML = "You are OFFLINE now. Please connect the Internet.";
    off.style.position = "fixed";
    off.style.top = "1.6rem";
    off.style.color = "red";
    document.body.appendChild(off);
});
