$(function() {
  var search_list = $(".jscroll-inner");

  function appendShop(shop) {
    var html = `<div class="search__box">
    <div class="search__box--contens">
    <a class="#" href="/shops/${shop.id}"><div class="search__name">
    ${shop.shopname}
    </div>
    <hr>
    <div class="search__station">
    ${shop.station}
    駅から徒歩
    ${shop.station_walk}
    分
    </div>
    </a></div>
    <div class="search__box--masks search__box--masks${shop.id}">
    </div>
    </div>`
    search_list.append(html);
    shop.masks.forEach(function(mask){
      appendmask(mask,shop.id);
    })
  }

  function appendmask(mask,id){

    if (mask.image.url){
    var name = mask.name
    var img = mask.image.url
    var stock = mask.stock
    var html = `<div class="search__box--mask">
    <div class="search__box--mask-image">
    <img src="${img}">
    </div>
    <div class="search__box--mask-under">
    <div class="search__box--mask-name">
    ${name}
    </div>
    <div class="search__box--mask-stock">
    在庫（箱）：
    <spam class="search__box--mask-num">
    ${stock}
    </spam>
    </div>
    </div>
    </div>`
      var apennding = ".search__box--masks" + id;
      $(apennding).append(html)
    } else {
    var name = mask.name
    var stock = mask.stock
    var html = `<div class="search__box--mask">
    <div class="search__box--mask-image">
    <div class="noimage__box--index"></div>
    </div>
    <div class="search__box--mask-under">
    <div class="search__box--mask-name">
    ${name}
    </div>
    <div class="search__box--mask-stock">
    在庫（箱）：
    <spam class="search__box--mask-num">
    ${stock}
    </spam>
    </div>
    </div>
    </div>`
      var apennding = ".search__box--masks" + id;
      $(apennding).append(html)
    }



}
function appendErrMsgToHTML(msg) {
  var html = `<div class='name'>${ msg }</div>`
  search_list.append(html);
}




  $(".search-input").on("keyup", function() {
    var input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/shops/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(shops) {
      search_list.empty();
      if (shops.length !== 0) {
        shops.forEach(function(shop){
          appendShop(shop);
        });
      }
      else {
        appendErrMsgToHTML("一致する駅名がありません");
      }
    })
  });
});