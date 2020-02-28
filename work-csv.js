onmessage = function(e) {
  var data = e.data;
  console.log('[CSV Maker] Received Data.', data);
  console.log('[CSV Maker] Strat Encoding Process.');
  
  var csv = `\ufeff"座號","總計","未搬椅子","未打掃",`+data.dates.join(",")+"\n";
  for(var i = 1; i < 30; i++) {
	if(data.sname[i]) {
	  csv += `${i},${data.total[i] ? data.total[i] : ''},${data.total_s[i] ? data.total_s[i] : ''},${data.total_j[i] ? data.total_j[i] : ''},`;
	  for(var j = 0; j < data.dates_code.length; j++) {
		csv += `"${data.data[dates_code[j]].seats ? (data.data[dates_code[j]].seats.includes(i) ? "X" : "") : ""}",`;
		csv += `"${data.data[dates_code[j]].jobs ? (data.data[dates_code[j]].jobs.includes(i) ? "X" : "") : ""}",`;
	  }
	  csv += "\n";
	}
  }
  
  console.log('[CSV Maker] CSV File Encoded.');
  postMessage(csv);
}
