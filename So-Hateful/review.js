function reviewSub(tar, dic) {
    for(var i = 0; i < dic.length; i++) {
        if(tar.includes(dic[i])) {
            return false;
        }
    }
    return true;
}
