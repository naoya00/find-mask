document.addEventListener("turbolinks:load", function() {
  function buildHTML(comment){
    var html = `<div class="newpost__box comments__box">
    <span class="newpost__box--date">
    ${comment.created_at}
    </span>
    <span class="newpost__box--name">
    ${comment.nickname}
    </span>
    <hr>
    <div class="newpost__box--content">
    ${comment.text}
    </div>
    </div>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.posts__box').prepend(html);
      $('.textbox').val('');
      $('.nicknamebox').val('');
      $('.comments__form--box-submit').prop('disabled', false);
    })
    .fail(function(){
      alert('空の値があります');
      $('.comments__form--box-submit').prop('disabled', false);
    })
  })
  $('.comments--underbox').jscroll({
    contentSelector: '.comments--underbox',
    nextSelector: 'span.next:last a',
    loadingHtml: '読み込み中'
  });
});