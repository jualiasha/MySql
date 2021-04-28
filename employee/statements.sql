use employeeDB;

select * from employee where salary is null;
select firstname from employee where department is null;
select * from employee where salary is not null;
select * from employee where department is not null and salary is not null;
select * from employee where department is null or salary is null;
update employee set salary=1000 where salary is null;
update employee set salary=null where employeeID in (6,7,8);
select count(*) as amount  from employee;
select count(department) as amount  from employee;
select count(firstname) from employee;
select count(*)-count(department) as departmentmissing from employee;
select count(*) as departmentMiss from employee where department is null;
select count(department) as dm from employee where department is null;/*0*/
select lastname, count(*) as amount from employee
    -> group by lastname;
select lastname, count(*) as amount from employee group by lastname order by amount desc;
select lastname, count(*) as amount from employee group by lastname having lastname in ('Jones','River');
select avg(salary) as averege from employee;
select min(salary) as min from employee;
select max(salary) as max from employee;
select max(salary)-min(salary) as dif from employee;


select firstname, lastname, salary, case when salary>6000 then 'topworker' else '-' end as notes from employee order by salary desc, lastname,firstname;

insert into employee(employeeId, firstname, lastname) values(10, 'Will', 'Jones');
insert into employee values(11, 'Jesse', 'Jones', 'ict', null);
insert into employee values(12, 'Peter', 'Bond', 'secr', 6000);

select firstname,lastname,salary,case 
when salary=(select min(salary) from employee) then 'min'
when salary=(select max(salary) from employee) then 'max'
when salary is null then 'missing'
else ' ' end as minmax
from employee order by lastname asc;

update employee set salary=4000 where firstname='Will';