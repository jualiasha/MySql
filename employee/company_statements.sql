use companydb;

select * from department;
select * from employee;
select salary from employee where firstname='Mary' and lastname='River';
select departmentName from employee, department where departmentNumber=departmentId;
select departmentName from employee, department where departmentNumber=departmentId and firstname='Mary';
select departmentName from employee, department where employee.departmentNumber=department.departmentId and firstname='Mary';
select * from employee, department where employee.departmentNumber=department.departmentId and firstname='Mary';


select departmentName, departmentFloor from employee join department on employee.departmentNumber=department.departmentId where firstname='Mary';
select * from employee join department on employee.departmentNumber=department.departmentId where firstname='Mary';

select * from employee join department on departmentNumber=departmentId where firstname='Mary';
select * from employee join department on departmentNumber=departmentId;

select firstname, lastname from employee join department on employee.departmentNumber=department.departmentId where departmentname='ict';
select firstname, lastname from employee inner join department on employee.departmentNumber=department.departmentId where departmentname='ict';

select departmentName, departmentFloor from employee join department on departmentNumber=departmentId where firstname='amanda';

 select avg(salary) as 'ict average' from employee where departmentNumber=1;
 select avg(salary) as 'ict average' from employee join department on departmentNumber=departmentId where departmentName='ict';

 select min(salary) as 'the lowest salsry' from employee join department on departmentNumber=departmentId;
 select departmentName from employee join department on departmentNumber=departmentId where salary=(select min(salary)from employee);
 select departmentName, firstname from employee join department on departmentNumber=departmentId where salary=(select min(salary)from employee);

 select departmentName, firstname, lastname from employee join department on departmentNumber=departmentId where salary>(select avg(salary)from employee);

 select departmentName, firstname, lastname, salary from employee join department on departmentNumber=departmentId where salary>(select avg(salary)from employee) order by salary desc;

select firstname, lastname, departmentName, salary, case 
when salary>(select avg(salary) from employee) then 'above'
when salary<(select avg(salary) from employee) then 'below'
else 'average' end as notes
from employee join department on departmentNumber=departmentId order by salary desc, firstname asc, lastname; 

select * from department join employee on departmentNumber=departmentId;

select * from department left join employee on departmentNumber=departmentId;
 