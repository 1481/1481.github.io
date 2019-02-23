var cantUse = [
    "jacob"
];
function reviewSub(tar) {
    for(var i = 0; i < cantUse.length; i++) {
        if(tar.includes(cantUse[i])) {
            return false;
        }
    }
    return true;
}
