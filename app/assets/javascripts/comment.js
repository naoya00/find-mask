$(function(){
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
      $('.posts__box').append(html);
      $('.textbox').val('');
      $('.nicknamebox').val('');
      $('.form__submit').prop('disabled', false);
    })
  })
});