create table user --ユーザーテーブルの作成
(user_id bigint(20) not null auto_increment primary key,
 user_name varchar(100) not null,
 email varchar(100) not null unique key
 );

create table channel --チャンネルテーブルの作成
(
  channel_id bigint(20) not null auto_increment primary key,
  cannel_name varchar(100) not null 
);

create table timeslot --番組スケジュールテーブルの作成
(
  timeslot_id bigint(20) not null auto_increment primary key,
  channel_id bigint(20) not null ,
  start_time datetime,
  end_time datetime,
  foreign key (channel_id) references channel(channel_id)
);

create table genre --ジャンルテーブルの作成
(
  genre_id bigint(20) not null auto_increment primary key,
  genre_name varchar(100) not null 
);

create table user_genre --userとgenreの中間テーブル
(
 user_id bigint(20) not null,
 genre_id bigint(20) not null,
 foreign key (user_id) references user (user_id),
 foreign key (genre_id) references genre (genre_id)
);

create table program --プログラムテーブルの作成
(
 program_id bigint(20) not null auto_increment primary key,
 genre_id bigint(20) not null,
 series_id bigint(20) not null,
 program_discription text not null,
 is_series tinyint(1) not null, --シリーズものか単発かの判定
 title varchar(100) not null,
 foreign key (genre_id) references ganre (genre_id) --一時消去
 foreign key (series_id) references series (series_id); -- 下記のalterで外部キーを挿入
);--ここを一時的に消した

alter table program add foreign key (series_id) references series (series_id); --シリーズの外部キーをプログラムテーブルに挿入

create table series --シリーズテーブルの作成
(
 series_id bigint(20) not null auto_increment primary key,
 program_id bigint(20) not null,
 season_no int not null,
 series_name varchar(100) not null,
 foreign key (program_id) references program (program_id) --
);

create table program_genre --シリーズテーブルとジャンルテーブルの中間テーブル
(
 program_id bigint(20) not null,
 genre_id bigint(20) not null,
 foreign key (program_id) references program (program_id),--
 foreign key (genre_id) references genre (genre_id) --
);

create table episode --エピソードテーブルの作成
(
 episode_id bigint(20) not null auto_increment primary key,
 series_id bigint(20) not null,
 episode_no int not null, --エピソードが何話目かを表す。
 episode_title varchar(100),
 episode_discription text, 
 duration time, --動画時間
 release_date date, --公開日
 viewership_count int, --視聴数をカウント
 foreign key (series_id) references series (series_id)
);

create table viewership_history
(
 viewership_history_id bigint(20) not null auto_increment primary key,
 episode_id bigint(20) not null,
 channel_id bigint(20) not null,
 timeslot_id bigint(20) not null,
 viewership_count int, --視聴数をカウント（episodeテーブルのviewership_countと数値が一致してないと整合性が取れなくなる。）
 foreign key (episode_id) references episode (episode_id),
 foreign key (channel_id) references channel (channel_id),
 foreign key (timeslot_id) references timeslot (timeslot_id)
);
