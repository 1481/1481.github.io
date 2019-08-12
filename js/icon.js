function icon(str) {
    var icons = [
        [/{{happy}}/gmi, '<i class="far fa-smile"></i>'],
        [/{{sad}}/gmi, '<i class="far fa-frown"></i>'],
        [/{{heart}}|{{love}}/gmi, '<i class="fas fa-heart"></i>'],
        [/{{angry}}/gmi, '<i class="far fa-angry"></i>'],
        [/{{good}}/gmi, '<i class="fas fa-thumbs-up"></i>'],
        [/{{laugh}}/gmi, '<i class="far fa-laugh-squint"></i>']
    ];
    
    for(var i = 0; i < icons.length; i++) {
        str = str.replace(icons[i][0], icons[i][1]);
    }
    return str;
}
