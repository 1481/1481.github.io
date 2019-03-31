firebase.auth().onAuthStateChanged(function(user) {
  if (user) {
    window.user = user;
  } else {
    window.user = null;
  }
});
