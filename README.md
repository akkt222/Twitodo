<dl>
  <dt>Twitodoとは</dt>
  <dd>Twitter APIとRuby on Railsを利用したToDo管理アプリです。</dd>
  <dt>url</dt>
  <dd>https://twitodo.herokuapp.com/</dd>
</dl>

### 使い方

トップ画面から右上の**Twitterアカウントでログイン**ボタンを押します。
![image](https://user-images.githubusercontent.com/55902529/81285587-b7b9ec80-909a-11ea-9a3f-38c581fe961a.png)
ログインするとヘッダーの中身が変わります。
新しくリストを作成する場合は**リストの作成**を押します。
![image](https://user-images.githubusercontent.com/55902529/81285787-010a3c00-909b-11ea-8a95-1ad057b32ca5.png)

**リストの作成**の画面です**リストの名前**は何でも構いませんが、**ハッシュタグ**は**twitodotest**というハッシュタグでツイッター上にテストデータを作成しているため、動作確認のために利用される際はこちらを推奨します。
また**ユーザー(TwitterのID) の欄は何も触らずに登録してください。現在開発中のため、＋ボタンを押してフォームを追加すると、Twitter APIにリクエストを送る際にエラーが発生します。**
![image](https://user-images.githubusercontent.com/55902529/81286641-585cdc00-909c-11ea-8443-9c7b0a1c322c.png)

**SUBMIT**ボタンを押すことでリストが新規に作成され、**リストの一覧**画面に遷移します。
**リストを編集・削除する**ボタンを押すことでリストに対して設定している名前とハッシュタグを変更する画面に遷移出来ます。

![image](https://user-images.githubusercontent.com/55902529/81286893-c903f880-909c-11ea-8283-843e9012ba5f.png)

**リストの一覧**画面から**リストを見る**ボタンを押すと以下のように選択したリストに遷移します。
この画面では左上に表示される**hashtag**が想定通りになっていることを確認し**Load new tweets**ボタンを押します。
![image](https://user-images.githubusercontent.com/55902529/81287480-c9e95a00-909d-11ea-98c8-1aea5f1d6d1c.png)

**Load new tweets**ボタンを押すと、Twitter APIにリクエストが送信され、以下のように該当するハッシュタグがついたツイートが表示されます。
これらのツイートに対してTodo管理を行うことが出来ます。
![image](https://user-images.githubusercontent.com/55902529/81288288-4fb9d500-909f-11ea-9fdc-2ef247c92c6b.png)
<br>
進捗状況を変更したいツイートのセレクトボックスから変更するステータスを選択し、**SUBMIT**を押します。
![image](https://user-images.githubusercontent.com/55902529/81288380-80017380-909f-11ea-9c39-1dfc230f4fa3.png)

今回は**WIP**を選択したため、ツイートが**WIP**のタグに移動しました。**WIP**からはPENDINGとCOMPLETEDに、**PENDING**からはWIPとCOMPLETEDにツイートを移動できます。COMPLETEDからツイートを移動させることは出来ません。
![image](https://user-images.githubusercontent.com/55902529/81288680-16359980-90a0-11ea-8840-1c70acc2be10.png)

### 使用技術
- Rails 6.0.2.2
- Ruby 2.6.3
- Materilize
- JavaScript
- jQuery 3.3.1
- Twitter API

### 追加の開発予定
- このレポジトリのIssuesにて管理しています。
