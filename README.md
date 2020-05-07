### Twitodoとは
- Twitter APIとRuby on Railsを利用したToDo管理アプリです。

使い方
￼
トップ画面から右上の「Twitterアカウントでログイン」ボタンを押します。
![image](https://user-images.githubusercontent.com/55902529/81285587-b7b9ec80-909a-11ea-9a3f-38c581fe961a.png)

ログインするとヘッダーの中身が変わります。
新しくリストを作成する場合は「リストの作成」を押します。
![image](https://user-images.githubusercontent.com/55902529/81285787-010a3c00-909b-11ea-8a95-1ad057b32ca5.png)

「リストの作成」の画面です。「リストの名前」は何でも構いませんが、「ハッシュタグ」は「twitodotest」というハッシュタグでツイッター上にテストデータを作成しているため、動作確認のために利用される際はこちらを推奨します。
また「ユーザー(TwitterのID)」の欄は何も触らずに登録してください。現在開発中のため、＋ボタンを押してフォームを追加すると、Twitter APIにリクエストを送る際にエラーが発生します。
![image](https://user-images.githubusercontent.com/55902529/81286641-585cdc00-909c-11ea-8443-9c7b0a1c322c.png)

「SUBMIT」ボタンを押すことでリストが新規に作成され、「リストの一覧」画面に遷移します。
「リストを編集・削除する」ボタンを押すことでリストに対して設定している名前とハッシュタグを変更する画面に遷移出来ます。
「リストを見る」ボタンを押すと選択したリストに遷移します。以下では「リストを見る」ボタンを押した際の動作について説明します。
![image](https://user-images.githubusercontent.com/55902529/81286893-c903f880-909c-11ea-8283-843e9012ba5f.png)
