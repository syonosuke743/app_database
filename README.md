# インターネットTV

##ステップ1

###ユーザーテーブル
| カラム名    | データ型     | NULL | キー    | 初期値 | AUTO INCREMENT |
| ----------- | ------------ | ---- | ------- | ------ | -------------- |
| user_id     | bigint(20)   |      | PRIMARY |        | YES            |
| user_name   | varchar(100) |      |         |        |                |
| email       | varchar(100) | YES  |         |        |                |

###チャンネルテーブル
| カラム名    | データ型     | NULL | キー    | 初期値 | AUTO INCREMENT |
| ----------- | ------------ | ---- | ------- | ------ | -------------- |
| channel_id  | bigint(20)   |      | PRIMARY |        | YES            |
| channel_name| varchar(100) |      |         |        |                |

