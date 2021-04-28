drop database if exists dogdb;
create database dogdb;
create table dogdb.dog(
    number integer not null primary key,
    name varchar(25) not null,
    weightKg integer not null,
    length integer not null,
    birth integer not null

);
drop user if exists 'charlie'@'localhost';
create user 'charlie'@'localhost' identified by 'wpBaeSjT';
grant all privileges on dogdb.* to 'charlie'@'localhost';

insert into dogdb.dog values(1, 'Canine The III', 10, 50, 2015);
insert into dogdb.dog values(6, 'Hound of Basker W.I.11e', 25, 35, 1990);
insert into dogdb.dog values(4, 'Gigant Howler', 1, 30, 2010);
insert into dogdb.dog values(5, 'Grand Duke of S.Q.L', 45, 42, 2005);
insert into dogdb.dog values(2, 'Barky', 20, 70, 2012);
insert into dogdb.dog values(3, 'Rex', 7, 40, 2018);
insert into dogdb.dog values(7, 'Spot', 13, 20, 2000);

use dogdb;
show tables;
describe dog;
select * from dog;