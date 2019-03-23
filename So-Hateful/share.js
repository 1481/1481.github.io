function share(articleID) {
    Swal.fire({
        title: '<strong>Share</strong>',
        type: 'text',
        html:
        '<input id="artiID" value="'+articleID+'" style="min-width: 80%; min-height: 2rem; font-size: 1.6rem;">' +
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
