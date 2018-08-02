window.onscroll = function() {scrollFunction()};


$(document).ready(function() {
    // Check if body height is higher than window height :)
    if ($("body").height() > $(window).height()) {
      scrollFunction();
    } else {
      document.getElementById("navbar-wagon").style.top = "0";
    }

});
function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("navbar-wagon").style.top = "0";
  } else {
    document.getElementById("navbar-wagon").style.top = "-70px";
  }
}
