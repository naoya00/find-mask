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


  $('#postslick').slick({
  autoplay: true, 
  vertical: true, 
  arrows: true,
  slidesToShow:3,
  centerMode:true,
  prevArrow:'<i class="fas fa-arrow-circle-up"></i>',
  nextArrow:'<i class="fas fa-arrow-circle-down"></i>'
 });



$('.dropdwn li').hover(function(){
    $("ul:not(:animated)", this).slideDown();
}, function(){
    $("ul.dropdwn_menu",this).slideUp();
});



  });

