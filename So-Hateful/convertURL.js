function convertURL(tar) {
	  var text=tar.value;
	  var exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/ig;
	  var text1=text.replace(exp, "<a href='$1'>$1</a>");
	  var exp2 =/(^|[^\/])(www\.[\S]+(\b|$))/gim;
	  return text1.replace(exp2, '$1<a target="_blank" href="http://$2">$2</a>');
}