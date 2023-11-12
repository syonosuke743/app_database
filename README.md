# インターネットTV

##　ステップ1

###　ユーザーテーブル
| カラム名    | データ型     | NULL | キー    | 初期値 | AUTO INCREMENT |
| ----------- | ------------ | ---- | ------- | ------ | -------------- |
| user_id     | bigint(20)   |      | PRIMARY |        | YES            |
| user_name   | varchar(100) |      |         |        |                |
| email       | varchar(100) | YES  |         |        |                |

###　チャンネルテーブル
| カラム名    | データ型     | NULL | キー    | 初期値 | AUTO INCREMENT |
| ----------- | ------------ | ---- | ------- | ------ | -------------- |
| channel_id  | bigint(20)   |      | PRIMARY |        | YES            |
| channel_name| varchar(100) |      |         |        |                |

### プログラムテーブル

| カラム名    | データ型     | NULL | キー    | 初期値 | AUTO INCREMENT |
| ----------- | ------------ | ---- | ------- | ------ | -------------- |
| channel_id  | bigint(20)   |      | PRIMARY |        | YES            |
| title       | varchar(100) |      |         |        |                |
| descript    | text         | YES  |         |        |                |

### エピソードテーブル

| カラム名          | データ型     | NULL | キー    | 初期値 | AUTO INCREMENT |
| ----------------- | ------------ | ---- | ------- | ------ | -------------- |
| episode_id        | bigint(20)   |      | PRIMARY |        | YES            |
| program_id        | bigint(10)   |      | FOREIGN |        |                |
| episode_title     | VARCHAR(100) |      |         |        |                |
| episode_discript  | VARCHAR(100) |      |         |        |                |
| season_no         | int          |      |         |        |                |
| episode_no        | int          |      |         |        |                |

### タイムテーブル
| カラム名        | データ型   | NULL | キー    | 初期値 | AUTO INCREMENT |
| --------------- | ---------- | ---- | ------- | ------ | -------------- |
| time_table_id   | bigint(20) |      | PRIMARY |        | YES            |
| channel_id      | bigint(20) |      | FOREIGN |        |                |
| episode_id      | bigint(20) |      | FOREIGN |        |                |
| start_time      | datetime   |      |         |        |                |
| end_time        | datetime   |      |         |        |                |
| view_count      | int(10)    |      |         |        |                |

### プログラムジャンルテーブル
| カラム名        | データ型   | NULL | キー    | 初期値 | AUTO INCREMENT |
| ----------      | ---------- | ---- | ------- | ------ | -------------- |
| program_genre_id| bigint(20) |      | PRIMARY |        | YES            |
| program_id      | bigint(20) |      | FOREIGN |        |                |
| genre_id        | bigint(20) |      | FOREIGN |        |                |

### ER図
