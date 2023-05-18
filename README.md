# internet_tv
Week5-6の提出クエストです

## ステップ1
[テーブル設計](https://silky-emery-b0e.notion.site/1-e925c1da35fc48bd8e7ea951beb77986)

## ステップ2
- 任意のディレクトリでつぎのコマンドを実行する。
 `git clone https://github.com/925rycki/internet_tv`
- dbコンテナを構築、起動し、コンテナの中に入る。
  `docker compose up -d`
  `docker compose exec db bash`
- MySQLに接続する。
  `mysql -u [ユーザー名] -p`
- つぎのコマンドを実行して、データベースの構築、テーブルの構築、サンプルデータの挿入を行う。
  `source /internet_tv/internet_tv.sql;`
  
## ステップ3

