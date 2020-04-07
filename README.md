##### :computer:アプリの概要

#   人類を救う、マスク在庫検索アプリ　　　　  【Find Mask】
<p align="center">
<img width=90% alt="スクリーンショット 2020-04-05 16 20 05" src="https://user-images.githubusercontent.com/61132935/78469166-87a8c200-7759-11ea-8ea8-c04be4b54a6e.png">
</p>
<br>
<br> 

## :calling:レスポンシブデザイン
<p align="center">
<img src="https://user-images.githubusercontent.com/61132935/78469806-44515200-775f-11ea-848c-208a26aad747.PNG" alt="属性" title="タイトル" width=50% >
</p>

<p align="center">
<a href="https://guides.rubyonrails.org/"><img src="https://camo.githubusercontent.com/e6318bb26cecc5eaec3548fe7446e2ccc0820afe/68747470733a2f2f71696974612d696d6167652d73746f72652e73332e61702d6e6f727468656173742d312e616d617a6f6e6177732e636f6d2f302f3534333133332f37613663323763642d303963622d623965372d376231622d3163623536646662656530632e706e67" width="80px;" /></a>
<br>
<a href="http://haml.info/"><img src="https://user-images.githubusercontent.com/57832553/74001312-78520600-49ae-11ea-9f29-33f42bd75df4.png" height="45px;" /></a>
<a href="https://sass-lang.com/styleguide/brand"><img src="https://user-images.githubusercontent.com/57832553/73996999-a29cc700-49a0-11ea-8f87-2ce847edfeea.png" height="45px;" /></a>
<a href="https://jquery.com/"><img src="https://user-images.githubusercontent.com/57832553/73933784-96712500-4920-11ea-974f-23b73e2c6113.png" height="40px;"/></a>
<a href="https://aws.amazon.com/jp/aws-jp-introduction/aws-jp-webinar-service-cut/"><img src="https://user-images.githubusercontent.com/57832553/73935917-fec20580-4924-11ea-9b42-36715e8d4ede.png" height="45px;"/></a>
<a href="https://aws.amazon.com/jp/aws-jp-introduction/aws-jp-webinar-service-cut/"><img src="https://user-images.githubusercontent.com/61132935/78471614-7d90be80-776d-11ea-8700-57a735a56fd3.png" height="45px;"/></a>
<a href="https://aws.amazon.com/jp/aws-jp-introduction/aws-jp-webinar-service-cut/"><img src="https://user-images.githubusercontent.com/61132935/78471782-d745b880-776e-11ea-8256-cfd4577d4a84.png" height="45px;"/></a>
</p>
<br>

## :smirk::question:このアプリでできること<br>
消費者（一般ユーザー）　　　　　　 　　：お近くの駅から、マスクの在庫のあるドラックストアを検索できます。<br>
提供者（ドラックストアなど、販売業者）：マスクの在庫状況や入荷情報を登録できます。<br><br>


## :thought_balloon:制作背景<br>
本アプリのコンセプトは、人類を救うことです。<br>
ポートフォリオ制作にあたって、自分は世の中の役に立つアプリを制作したいと考えました。そこで世界でも問題になっているコロナウィルスに注目し案を考えました。<br>
マスクは自分を守るためではなく人類を守るためにするものだとニュースで拝見しました。ならば全員にマスクが行き届かなけば意味がないと思い、本アプリを作成しました。<br><br>

## :eyes:アプリの機能一覧

##### SHOP(会員登録有り)
・店舗情報（追加、編集）機能<br>
・マスク在庫（追加、消去）機能<br>
・入荷情報（追加）機能<br>
##### USER(会員登録無し)
・マスク在庫検索機能<br>
・入荷情報閲覧機能<br>
・掲示板（追加）閲覧機能<br><br>

## :memo:使用技術
#### フロント
・HTML５（haml)<br>
・css3(SASS)<br>
・jqueri(インクリメンタルサーチ、メッセージの非同期化、画像のプレビュー表示、ドロップダウンメニュー、無限スクロール）<br>
・JSライブラリ（slick.js、pace.js、jscroll.js)<br>
・レスポンシブデザイン（メディアクエリ）<br>
・Webフォント（Google fonts)<br>
・アイコンフォント（font-awesome)<br>
・CSSアニメーション<br>
#### サーバー
・Ruby on Rails(devise,carrierwave,mini_magick,kaminari)<br>
・rspec、factory_botを用いたテスト<br>
#### インフラ
・AWS（Capistranoによる自動デプロイ化）<br>
・S3<br>
・route53<br><br>

## :bulb:工夫したポイント
今回特に工夫したポイントは、２つあります。<br>
１つ目のポイントはユーザーにストレスを感じさせないように自分なりに考え、フロント実装したところです。<br>
クリックできるところには全て、何かしらのアクションがつけてあります。<br>
headerには常に、全てのサービス飛べるようにメニューバーを設置しております。<br>
また、スマホで見る際には同じようにheaderから全てのサービスに飛べるように工夫いたしました。<br>
<p align="center">
<img width=８0% alt="プレビュー動画" src="https://user-images.githubusercontent.com/61132935/78554999-219a6880-7847-11ea-9d92-cc97e2eccb89.gif">
</p><br>
もう１つ工夫したポイントは、インクリメンタルサーチです。<br>
今回実装したインクリメンタルサーチは、出力する情報が別テーブル且つ複数であったのでとても難しく<br>
append先が全て一緒になってしまうので、appendする先をidで変化させる工夫をして乗り越えました。<br>
この問題は調べても、答えがありませんでした。そのような問題に直面した際は情報を組み合わせて解決する。<br>
それが大事と学ばさせていただきました。<br><br>

## 🌐 App URL
ゲストログイン機能もご用意させていただきました、よろしければご覧ください。
### **http://find-mask.tokyo/**  
