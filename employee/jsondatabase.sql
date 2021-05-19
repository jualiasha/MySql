drop database if exists jsondb;
create database jsondb;

use jsondb;

create table data(
    id integer not null primary key,
    person json not null check (JSON_VALID(person))

);

insert into data values('1', '{"firstname": "Matt", "lastname": "River"}');
insert into data values('2', '{"firstname": "Mary", "lastname": "River"}');
insert into data values('3', '[1,2,3,4,5]');


select json_value((select person from data where id=1), '$.firstname');


select json_query((select person from data where id=1), '$');


