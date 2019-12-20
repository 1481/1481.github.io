function srt2vtt(srt) {
var vtt = "WEBVTT \n\n";

var split = srt.split("\n\n");
for(var i = 0; i < split.length; i++) {
    try {
        var part = split[i].split("\n");
        vtt += part[1].split(",").join(".") + "\n";
        for(var j = 2; j < part.length; j++) {
            vtt += part[j] + "\n";
        }
        vtt += "\n";
    }
    catch(e) {}
}
return vtt;
}
