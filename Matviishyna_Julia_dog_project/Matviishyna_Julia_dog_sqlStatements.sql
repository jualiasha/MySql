use dogdb;

select * from dog;
select number, length, birth from dog;
select * from dog where name='Barky';
select * from dog where name='Canine The III';
select * from dog where birth=2015;

update dog set birth=2017, weightKg=1 where number=1;
select * from dog;
update dog set name='Barky', birth=2000 where number=7;
select * from dog;
update dog set birth=2018, weightKg=13, name='Rex' where number=5;
select * from dog;
update dog set length=40, birth=2005,weightKg=30 where number=1;
select * from dog;

delete from dog where number=4;
select * from dog;
delete from dog where number=5;
select * from dog;
delete from dog where birth=2000;
select * from dog;
delete from dog where name='Grand Duke of S.Q.L' or name='Hound of Basker W.I.11e';
select * from dog;
delete from dog where birth=2000 and length=50 and name='Grand Duke of S.Q.L';
select * from dog;