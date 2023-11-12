create table user 
(user_id bigint(20) not null auto_increment primary key,
 user_name varchar(100) not null,
 email varchar(100) not null unique key
 );

INSERT INTO user (user_name, email)
VALUES
('John Doe', 'john.doe@example.com'),
('Alice Smith', 'alice.smith@example.com'),
('Bob Johnson', 'bob.johnson@example.com'),
('Eva Williams', 'eva.williams@example.com'),
('Michael Brown', 'michael.brown@example.com'),
('Sophia Davis', 'sophia.davis@example.com'),
('Daniel Miller', 'daniel.miller@example.com'),
('Olivia Garcia', 'olivia.garcia@example.com'),
('William Rodriguez', 'william.rodriguez@example.com'),
('Emma Martinez', 'emma.martinez@example.com');


create table channel 
(
  channel_id bigint(20) not null auto_increment primary key,
  channel_name varchar(100) not null 
);

INSERT INTO channel (channel_name)
VALUES
("アニメ"),
("バラエティー"),
("ドラマ"),
("麻雀"),
("スポーツ"),
("ニュース"),
("ペット");


create table genre 
(
  genre_id bigint(20) not null auto_increment primary key,
  genre_name varchar(100) not null 
);

INSERT INTO genre (genre_name)
VALUES
("アニメ"),
("バラエティー"),
("ドラマ"),
("麻雀"),
("スポーツ"),
("ニュース"),
("ペット");


create table program 
(
 program_id bigint(20) not null auto_increment primary key,
 title varchar(100) not null,
 descript text
);

insert into program ( title, descript) VALUES
("サザエさん","日常を描いた国民的アニメです。"),
("クレヨンしんちゃん","ギャグと感動が織り交ざったアニメです。"),
("相棒","刑事ドラマです。"),
("リーガルハイ","弁護士のコメディです。"),
("世界陸上","世界陸上の中継をお届けします。"),
("ニュース24時","タイムリーにニュースをお届けします。"),
("きょうのわんこ","今日のわんこをお届けします。"),
("鬼滅の刃","鬼を滅するために立ち上がった男の物語。"),
("呪術廻戦","呪力を駆使したバトルアクション。"),
("半沢直樹","やられたらやり返す！倍返しだ！"),
("麻雀杯","プロたちの熱い戦い"),
("ケンミンショー","京都のあれ");

create table program_genre 
(
 program_genre_id bigint(20) not null auto_increment primary key,
 program_id bigint(20) not null,
 genre_id bigint(20) not null,
 foreign key (program_id) references program (program_id),
 foreign key (genre_id) references genre (genre_id) 
);

insert into program_genre (program_id, genre_id) VALUES 
(1,1),
(2,1),
(3,3),
(4,3),
(5,5),
(6,6),
(7,7),
(8,1),
(9,1),
(10,3),
(11,4),
(12,2);

create table time_table
(
 time_table_id bigint(20) not null auto_increment primary key,
 channel_id bigint(20) not null,
 episode_id bigint(20) not null,
 start_time datetime not null,
 end_time datetime not null,
 view_count int(10) not null default 0,
 foreign key (channel_id) references channel (channel_id),
 foreign key (episode_id) references episode (episode_id)
);

INSERT INTO time_table (channel_id, episode_id, start_time, end_time, view_count)
VALUES
  (1, 1, '2023-11-01 08:00:00', '2023-11-01 08:30:00', 5432),
  (1, 2, '2023-11-02 09:15:00', '2023-11-02 09:45:00', 7891),
  (1, 3, '2023-11-03 12:30:00', '2023-11-03 13:00:00', 2345),
  (1, 4, '2023-11-04 14:45:00', '2023-11-04 15:15:00', 4567),
  (1, 5, '2023-11-05 18:00:00', '2023-11-05 18:30:00', 3123),
  (1, 6, '2023-11-06 20:00:00', '2023-11-06 20:30:00', 6542),
  (1, 7, '2023-11-07 08:00:00', '2023-11-07 08:30:00', 1987),
  (1, 8, '2023-11-08 09:15:00', '2023-11-08 09:45:00', 4321),
  (1, 9, '2023-11-09 12:30:00', '2023-11-09 13:00:00', 5678),
  (1, 10, '2023-11-10 14:45:00', '2023-11-10 15:15:00', 7890),
  (1, 11, '2023-11-11 18:00:00', '2023-11-11 18:30:00', 2345),
  (1, 12, '2023-11-12 20:00:00', '2023-11-12 20:30:00', 6543),
  (2, 13, '2023-11-13 08:00:00', '2023-11-13 08:30:00', 5532),
  (2, 14, '2023-11-14 09:15:00', '2023-11-14 09:45:00', 7791),
  (2, 15, '2023-11-15 12:30:00', '2023-11-15 13:00:00', 2445),
  (2, 16, '2023-11-16 14:45:00', '2023-11-16 15:15:00', 4767),
  (2, 17, '2023-11-17 18:00:00', '2023-11-17 18:30:00', 3723),
  (2, 18, '2023-11-18 20:00:00', '2023-11-18 20:30:00', 6242),
  (2, 19, '2023-11-19 08:00:00', '2023-11-19 08:30:00', 1487),
  (2, 20, '2023-11-20 09:15:00', '2023-11-20 09:45:00', 4121),
  (3, 21, '2023-11-21 12:30:00', '2023-11-21 13:00:00', 5478),
  (4, 22, '2023-11-22 14:45:00', '2023-11-22 15:15:00', 7990),
  (7, 23, '2023-11-23 18:00:00', '2023-11-23 18:30:00', 2445),
  (1, 24, '2023-11-24 20:00:00', '2023-11-24 20:30:00', 5147);
  (1, 25, '2023-11-25 20:00:00', '2023-11-25 20:30:00', 2221);
  (3, 26, '2023-11-26 20:00:00', '2023-11-26 20:30:00', 3665);
  (4, 27, '2023-11-27 20:00:00', '2023-11-27 20:30:00', 5555);
  (2, 28, '2023-11-28 20:00:00', '2023-11-28 20:30:00', 7744);


create table episode 
(
 episode_id bigint(20) not null auto_increment primary key,
 program_id bigint(20) not null,
 episode_title varchar(100) not null,
 episode_discript text not null, 
 season_no int not null,
 episode_no int not null, 
 foreign key (program_id) references program (program_id)
);

insert into episode (program_id, episode_title, episode_discript, episode_no, season_no) VALUES
(1,"サザエさん 第1話", "マスオの休日", 1,1),
(1,"サザエさん 第2話", "タラオの休日", 2,1),
(1,"サザエさん 第3話", "カツオの休日", 3,1),
(1,"サザエさん 第4話", "ワカメの休日", 4,1),
(1,"サザエさん 第5話", "サザエの休日", 5,1),
(1,"サザエさん2 第1話", "マスオの平日", 1,2),
(1,"サザエさん2 第2話", "タラオの平日", 2,2),
(1,"サザエさん2 第3話", "カツオの平日", 3,2),
(2,"クレヨンしんちゃん第1話", "しんのすけ", 1,1),
(2,"クレヨンしんちゃん第1話", "しんのすけ2", 1,2),
(2,"クレヨンしんちゃん2第1話", "しんのすけ3", 2,1),
(2,"クレヨンしんちゃん2第1話", "しんのすけ4", 2,2),
(3,"相棒第1話","赤",1,1),
(3,"相棒第2話","青",1,2),
(3,"相棒2第1話","黄",2,1),
(3,"相棒2第2話","緑",2,2),
(4,"リーガルハイ","サイバー犯罪",1,1),
(4,"リーガルハイ","著作権",1,2),
(4,"リーガルハイ2","憲法",2,1),
(4,"リーガルハイ2","刑法",2,2),
(5,"世界陸上","男子100M走",null,null),
(6,"ニュース24時","あの天才は今",null,null),
(7,"きょうのわんこ","あの家のわんこ",null,null),
(8,"鬼滅の刃第1話","鬼",null,null),
(9,"呪術廻戦第1話","呪術",null,null),
(10,"半沢直樹第1話","倍返し",null,null),
(11,"麻雀杯","タイトル戦",null,null),
(12,"ケンミンショー","京都のあれ",null,null);




--1のクエリ
select e.episode_title, t.view_count
from program as p
inner join episode as e on p.program_id = e.program_id
inner join time_table as t on e.episode_id = t.episode_id
order by t.view_count desc
limit 3;

+-------------------------+------------+
| episode_title           | view_count |
+-------------------------+------------+
| ニュース24時            |       7990 |
| サザエさん 第2話        |       7891 |
| クレヨンしんちゃん第1話 |       7890 |
+-------------------------+------------+

--2のクエリ
select p.title, e.season_no, e.episode_no, e.episode_title, t.view_count
from program as p
inner join episode as e on p.program_id = e.program_id
inner join time_table as t on e.episode_id = t.episode_id
order by t.view_count desc
limit 3;
+--------------------+-----------+------------+-------------------------+------------+
| title              | season_no | episode_no | episode_title           | view_count |
+--------------------+-----------+------------+-------------------------+------------+
| ニュース24時       |         0 |          0 | ニュース24時            |       7990 |
| サザエさん         |         1 |          2 | サザエさん 第2話        |       7891 |
| クレヨンしんちゃん |         2 |          1 | クレヨンしんちゃん第1話 |       7890 |
+--------------------+-----------+------------+-------------------------+------------+

--3のクエリ
select c.channel_name, t.start_time, t.end_time, e.season_no, e.episode_no, e.episode_title, e.episode_discript
from channel as c
inner join time_table as t on c.channel_id = t.channel_id
inner join episode as e on t.episode_id = e.episode_id
where t.start_time >= timestamp('2023-11-13 00:00:00')
and t.start_time < timestamp('2023-11-14 00:00:00')
order by c.channel_id asc, t.start_time asc;
+--------------+---------------------+---------------------+-----------+------------+---------------+------------------+
| channel_name | start_time          | end_time            | season_no | episode_no | episode_title | episode_discript |
+--------------+---------------------+---------------------+-----------+------------+---------------+------------------+
| バラエティー | 2023-11-13 08:00:00 | 2023-11-13 08:30:00 |         1 |          1 | 相棒第1話     | 赤               |
+--------------+---------------------+---------------------+-----------+------------+---------------+------------------+

--4のクエリ
select c.channel_name, t.start_time, t.end_time, e.season_no, e.episode_no , e.episode_title, e.episode_discript
from episode as e
inner join time_table as t on e.episode_id = t.episode_id
inner join channel as c on t.channel_id = c.channel_id
where channel_name = 'ドラマ'
and t.start_time >= timestamp('2023-11-01 00:00:00')
and t.start_time < timestamp('2023-11-08 00:00:00')
order by t.start_time asc;

