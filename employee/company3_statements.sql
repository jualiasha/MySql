use companydb2;

select * from department;
select * from employee;
select * from headofDepartment;

select firstname, lastname, departmentName from employee
join headofDepartment on headofDepartment.employeeId=employee.employeeId
join department on headofDepartment.departmentId=department.departmentId;


select lastname, firstname, departmentName from employee
join headofDepartment on headofDepartment.employeeId=employee.employeeId
join department on headofDepartment.departmentId=department.departmentId
order by lastname, firstname, departmentName;

delete from headofDepartment where departmentId=5;
select * from headofDepartment;


select departmentName, lastname, firstname from department
left join headofDepartment on headofDepartment.departmentId=department.departmentId
left join employee on headofDepartment.employeeId=employee.employeeId
order by departmentName;

