var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
  var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.getElementById("navbar-wagon").style.top = "0";
  } else {
    document.getElementById("navbar-wagon").style.top = "-70px";
  }
  prevScrollpos = currentScrollPos;
}
