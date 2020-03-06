$(function() {
  $('.search__box--masks').slick({
  slidesToShow:3,
  centerMode:true,
  autoplay:1800,
  arrows:false,
  });

  $('.btn__newpost').click(function() {
    var speed = 400; 
    var target = $(".posts__en");
    var position = target.offset().top;
    $('body,html').animate({
      scrollTop: position
    }, speed, 'swing');
    return false;
  });

  });