drop database if exists test;
create database if not exists test;
use test;
create table if not exists polzovat
(
id int,
username varchar(30),
sept date 
);
insert into polzovat values
(1, 'пользователь 1', '2009-09-09'),
(2, 'пользователь 2', '2009-09-15'),
(3, 'пользователь 3', '2009-09-17'),
(4, 'пользователь 4', '2009-09-01'),
(5, 'пользователь 5', '2009-09-25');
select * from polzovat;
create table if not exists serials
(
id int,
username varchar(50),
rez varchar(40),
zanr varchar(20)
);
insert into serials values
(1, 'сериал 1', 'Юрий Морозов', 'комедия'),
(2, 'сериал 2', 'Алексей Мамедов', 'боевик'),
(3, 'сериал 3', 'Андрей Звягинцев', 'комедия');
insert into serials(username, rez) values
( 'сериал 4', 'Алексей Герман'),
('сериал 5', 'Иван И. Твердовский');
select * from serials;
create table if not exists otz
(
id int,
username varchar(50),
rez varchar(40),
ot varchar(100)
);
insert into otz values
(1, 'сериал 1', 'Юрий Морозов', 'бла-бла-бла'),
(2, 'сериал 2', 'Алексей Мамедов', 'бла-бла-бла'),
(3, 'сериал 3', 'Андрей Звягинцев', 'бла-бла-бла');
insert into otz(username, rez) values
( 'сериал 4', 'Алексей Герман'),
('сериал 5', 'Иван И. Твердовский');
select * from otz;
create table if not exists zanr
(
id int,
username varchar(30)
);
insert into zanr values
(1, 'комедия'),
(2, 'трагедия'),
(3, 'исторический'),
(4, 'научно-популярный'),
(5, 'фэнтази');
select * from zanr;
update polzovat set username='пользователь' limit 100;
select * from polzovat;
update polzovat set username='Сенаторов' where sept='2009-09-09' limit 5;
select * from polzovat;
delete from zanr where username='комедия' limit 5;
-- delete from zanr where id=5 limit 5;
select * from zanr;
