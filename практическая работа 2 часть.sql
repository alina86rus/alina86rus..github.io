drop database if exists test1;
create database if not exists test1;
use test1;
create table if not exists magaz
(
id int,
title varchar(30),
address varchar(100),
city varchar(20),
has varchar(20),
index(id, title)
);
insert into magaz values

(0, 'Пятёрочка', 'ул. Семёнова, 47', 'Москва', '8:00-22:00'),
(1, 'Перекрёсток', 'ул. Семёнова, 48', 'Москва', 'круглосуточно'),
(2, 'Пятёрочка', 'ул. Вовы, 32', 'Санкт-Петербург', '8:30-22:30'),
(3, 'Перекрёсток', 'ул. Татьяны Б., 1', 'Ижевск', '9:00-21:00');

select * from magaz;

update magaz set title='Пятёрочка 2' where title='Пятёрочка' limit 100;
update magaz set address='пр-т Орлова, 33' where city='Ижевск' limit 100;
update magaz set title='Всегда открыто' where has='круглосуточно' limit 100;
update magaz set address='Рядом с домом' where has='круглосуточно' limit 100;
delete from magaz where id=2 limit 5;
select * from magaz;