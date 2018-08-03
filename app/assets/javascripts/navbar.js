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

$(document).ready( function() {
  $('body').on("click", ".larg div h3", function(){
    if ($(this).children('span').hasClass('close')) {
      $(this).children('span').removeClass('close');
    }
    else {
      $(this).children('span').addClass('close');
    }
    $(this).parent().children('.user-content').slideToggle(250);
  });

  $('body').on("click", "nav ul li a", function(){
    var title = $(this).data('title');
    $('.title').children('h2').html(title);
  });
});
