select EmployeeUNI.unique_id, employees.name
from employees
left join EmployeeUNI 
on employees.id = EmployeeUNI.id;

