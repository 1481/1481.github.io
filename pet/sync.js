var config = {
        apiKey: "AIzaSyAW060kfFPzaSKzflp9eXesmyn-GMYj-M8",
        authDomain: "hsnu-1481-website.firebaseapp.com",
        databaseURL: "https://hsnu-1481-website.firebaseio.com",
        projectId: "hsnu-1481-website",
        storageBucket: "hsnu-1481-website.appspot.com",
        messagingSenderId: "405025421965"
    };
firebase.initializeApp(config);
firebase.auth().onAuthStateChanged(function(user) {
    if (user) {
        console.log("User Logged In.");
        checkPoint = 0;
        resync();
    } else {
        alert("Please Login First.");
        location.href = "/auth/";
    }
});
var db = firebase.firestore();
var Cloud = db.collection("Pet");
var checkPoint = 1;
function syncToCloud(f) {
    var doc = Cloud.doc(firebase.auth().currentUser.uid);
    db.collection("Pet").doc(firebase.auth().currentUser.uid).get()
    .then((doc) => {
        if (!doc.exists) {
            db.collection("Pet").doc(firebase.auth().currentUser.uid).set(f).then(console.log("Sync Successfully."));
        } else {
            db.collection("Pet").doc(firebase.auth().currentUser.uid).update(f).then(console.log("Sync Successfully."));
        }
    })
    .catch((err) => {
        console.log("Sync Failed.");
    });
}
function resync() {
    var doc = Cloud.doc(firebase.auth().currentUser.uid);
    db.collection("Pet").doc(firebase.auth().currentUser.uid).get()
    .then((doc) => {
        if (doc.exists) {
            petInfo = doc.data();
        }
    })
    .catch((err) => {
        console.log("reSync Failed.");
    });
}
setInterval(function() {
    resync();
}, 60*1000);
