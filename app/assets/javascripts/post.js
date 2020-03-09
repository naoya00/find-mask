$(function() {
  $('.search__box--masks').slick({
  slidesToShow:3,
  centerMode:true,
  centerPadding:150,
  autoplay:1500,
  arrows:false,
  focusOnSelect:true
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