//= require jquery
//= require jquery_ujs
//= require jquery.remotipart

$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
        $('#scroll-up').fadeIn(200);    // Fade in the arrow
    } else {
        $('#scroll-up').fadeOut(200);   // Else fade out the arrow
    }
});

$( document ).ready(function() {
  $( document.body ).click(function(e) {
    if (e.target.id == "scroll-up" || e.target.className == "icon-chevron-up"){
      $('html, body').animate({scrollTop : 0}, 500);
      event.preventDefault();
    }
  });
});