use companydb4;

select lastname, firstname, departmentName, positionName from employee
join employeeOfDepartment on employeeOfDepartment.employeeId=employee.employeeId
join department on employeeOfDepartment.departmentId=department.departmentId
join employeePosition on employeePosition.positionId=employeeOfDepartment.positionId
order by firstname, lastname, departmentName;

select departmentName, lastname, firstname, positionName from employee
join employeeOfDepartment on employeeOfDepartment.employeeId=employee.employeeId
join department on employeeOfDepartment.departmentId=department.departmentId
join employeePosition on employeePosition.positionId=employeeOfDepartment.positionId
order by departmentName, positionName, lastname, firstname;

select lastname, firstname, positionName from employee
join employeeOfDepartment on employeeOfDepartment.employeeId=employee.employeeId
join department on employeeOfDepartment.departmentId=department.departmentId
join employeePosition on employeePosition.positionId=employeeOfDepartment.positionId
where departmentName='ict'
order by departmentName, positionName, lastname, firstname;


update employee set salary=round(salary*1.1);






