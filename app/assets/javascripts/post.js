$(function() {

  $('.btn__newpost').click(function() {
    var speed = 400; 
    var target = $(".posts");
    var position = target.offset().top;
    $('body,html').animate({
      scrollTop: position
    }, speed, 'swing');
    return false;
  });

  $('.topcontens__right--btn').click(function() {
    var speed = 400; 
    var target = $(".servise");
    var position = target.offset().top;
    $('body,html').animate({
      scrollTop: position
    }, speed, 'swing');
    return false;
  });

  });