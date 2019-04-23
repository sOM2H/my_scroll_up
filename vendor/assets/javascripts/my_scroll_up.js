$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) { 
        $('#scroll-up').fadeIn(200);
    } else {
        $('#scroll-up').fadeOut(200);
    }
});

$( document ).ready(function() {
  $( document.body ).click(function(e) {
    if (e.target.id == "scroll-up" || e.target.parentNode.id == "scroll-up"){
      $('html, body').animate({scrollTop : 0}, 500);
      event.preventDefault();
    }
  });
});