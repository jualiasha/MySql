drop database if exists employeeDB;
create database employeeDB;
create table employeeDB.employee(
    employeeId integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null,
    department varchar(15),
    salary decimal(6,2)

);
drop user if exists 'mary'@'localhost';
create user 'mary'@'localhost' identified by 'secret';
grant all privileges on employeeDB.* to 'mary'@'localhost';

insert into employeeDB.employee values(1, 'Mary', 'River', 'ICT', 3000);
insert into employeeDB.employee values(2, 'Matt', 'River', 'admin', 4000);
insert into employeeDB.employee values(3, 'Peter', 'Purse', 'finance', 7000);
insert into employeeDB.employee values(4, 'Will', 'Guard', 'security', 6000);
insert into employeeDB.employee values(5, 'Layla', 'Ocean', 'ict', 4400);
insert into employeeDB.employee values(6, 'Jesse', 'Smith', null, null);
insert into employeeDB.employee (employeeId,firstname,lastname) values(7, 'Vera', 'Jones');
insert into employeeDB.employee (employeeId,firstname,lastname,department) values(8, 'Felix', 'Jones', 'admin');
insert into employeeDB.employee (employeeId,firstname,lastname,salary) values(9, 'Amanda', 'Jones', 9000);
