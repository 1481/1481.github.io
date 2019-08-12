var cardName = ["stone", "gold", "magic", "trap", "shield", "attack", "recover", "destroy", "comet"];
var cards, users;

function init(u) {
    cards = remake(cardset());
    users = [];
    for(var i = 0; i < u; i++) {
        users.push(user());
    }
}

function user() {
    return {
        hand: [],
        field: [],
        point: 0
    };
}

function cardset() {
    let set = [];
    for(var i = 0; i < 20; i++)
        set.push(0);
    for(var i = 0; i < 10; i++)
        set.push(1);
    for(var i = 0; i < 5; i++)
        set.push(2);
    for(var i = 0; i < 10; i++)
        set.push(3);
    for(var i = 0; i < 10; i++)
        set.push(4);
    for(var i = 0; i < 20; i++)
        set.push(5);
    for(var i = 0; i < 5; i++)
        set.push(6);
    for(var i = 0; i < 20; i++)
        set.push(7);
    for(var i = 0; i < 5; i++)
        set.push(8);
    for(var i = 0; i < 0; i++)
        set.push(9);
    
    return set;
}

function remake(arr) {
    let o = arr.slice(0);
    let r = [];
    for(var i = 0; i < arr.length; i++) {
        r.push(o.splice(Math.floor(Math.random()*o.length),1)[0]);
    }
    return r;
}

function get(n=5, from=-1) {
    if(from == -1)
        return cards.splice(0, n);
    else {
        
        
    }
}
