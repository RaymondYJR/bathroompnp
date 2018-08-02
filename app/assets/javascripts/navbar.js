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

function div_show_sign_in() {
  document.getElementById('abc').style.display = "block";
}

function div_show_sign_up() {
  document.getElementById('abc').style.display = "block";
}
