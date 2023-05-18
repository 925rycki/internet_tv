# internet_tv
Week5-6の提出クエストです

## ステップ1
[テーブル設計](https://silky-emery-b0e.notion.site/1-e925c1da35fc48bd8e7ea951beb77986)

## ステップ2
- 任意のディレクトリでつぎのコマンドを実行し、クローンしたディレクトリに移動する。  
 `git clone https://github.com/925rycki/internet_tv.git`   
 `cd internet_tv`
- dbコンテナを構築、起動し、コンテナの中に入る。  
  `docker compose up -d`   
  `docker compose exec db bash`   
- MySQLに接続する。  
  `mysql -u [ユーザー名] -p`   
- つぎのコマンドを実行して、データベースの構築、テーブルの構築、サンプルデータの挿入を行う。  
  `source /internet_tv/internet_tv.sql;`   
  
## ステップ3
データを抽出します。

1. よく見られているエピソードを知りたいです。エピソード視聴数トップ3のエピソードタイトルと視聴数を取得してください。    
つぎのコマンドを実行する。  
`source /internet_tv/quest3-1.sql;`   
2. よく見られているエピソードの番組情報やシーズン情報も合わせて知りたいです。エピソード視聴数トップ3の番組タイトル、シーズン数、エピソード数、エピソードタイトル、視聴数を取得してください。    
つぎのコマンドを実行する。
`source /internet_tv/quest3-2.sql;`   
3. 本日の番組表を表示するために、本日、どのチャンネルの、何時から、何の番組が放送されるのかを知りたいです。本日放送される全ての番組に対して、チャンネル名、放送開始時刻(日付+時間)、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を取得してください。なお、番組の開始時刻が本日のものを本日方法される番組とみなすものとします。    
つぎのコマンドを実行する。
`source /internet_tv/quest3-3.sql;` 
4. ドラマというチャンネルがあったとして、ドラマのチャンネルの番組表を表示するために、本日から一週間分、何日の何時から何の番組が放送されるのかを知りたいです。ドラマのチャンネルに対して、放送開始時刻、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を本日から一週間分取得してください。  
つぎのコマンドを実行する。  
`source /internet_tv/quest3-4.sql;` 
