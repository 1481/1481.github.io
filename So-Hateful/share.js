function share(articleID) {
    var rb = {
        "dynamicLinkInfo": {
            "domainUriPrefix": "https://1481.page.link",
            "link": 'https://1481.tk/So-Hateful/share?id=' + articleID,
            "socialMetaTagInfo": {
                "socialTitle": "師大附中1481班 So Hateful #" + articleID,
                "socialDescription": 'https://1481.tk/So-Hateful/share?id=' + articleID
            }
        },
        "suffix": {
            "option": "UNGUESSABLE"
        }
    };
    var url = xhr.post("https://firebasedynamiclinks.googleapis.com/v1/shortLinks?key=AIzaSyAW060kfFPzaSKzflp9eXesmyn-GMYj-M8", JSON.stringify(rb));
    Swal.fire({
        title: '<strong>Share</strong>',
        type: 'text',
        html:
        '<input id="artiID" value="'+JSON.parse(url).shortLink+'" style="min-width: 80%; min-height: 2rem; font-size: 1.6rem;">' +
        '<button id="ShareArticle" style="display: none" data-clipboard-target="#artiID">COPY</button>',
        showCloseButton: true,
        focusConfirm: true,
        confirmButtonText:
        'COPY',
        confirmButtonAriaLabel: 'COPY',
        preConfirm: () => {
            var btn = document.getElementById("ShareArticle");
            var clipboard = new ClipboardJS(btn);
            btn.click();
            setTimeout(function(){Swal.fire({title: "COPIED!", type: "success"});}, 250);
        }
    })
}
