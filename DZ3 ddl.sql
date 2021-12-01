 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 
 select employee_name, monthly_salary 
 from employees  
 join employee_salary on employees.id = employee_salary.id 
 join salary_3 on employee_salary.id = salary_3.id
 
 --2. ������� ���� ���������� � ������� �� ������ 2000.
 
 select employee_name
 from employees 
 join salary_3 on employees.id = salary_3.id
 where monthly_salary < 2000
  
 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
 select monthly_salary from employees  right join employee_salary
on employees.id = employee_salary.employee_id 
right join salary_3 on employee_salary.salary_id = salary_3.id
where employee_name is null
 
 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

 select monthly_salary from employees  right join employee_salary
on employees.id = employee_salary.employee_id 
right join salary_3 on employee_salary.salary_id = salary_3.id
where monthly_salary < 2000 and employee_name is null

 --5. ����� ���� ���������� ���� �� ��������� ��.

 select employee_name from employees  left join employee_salary
on employees.id = employee_salary.employee_id 
left join salary_3 on employee_salary.salary_id = salary_3.id
where monthly_salary is null

-- 6. ������� ���� ���������� � ���������� �� ���������.

select * from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id

-- 7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
where role_name like '%Java %'

 --8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
where role_name like '%Python%'

 --9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
where role_name like '% QA %'

 --10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
where role_name like '% Manual QA %'

 --11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
where role_name like '% Automation QA %'

 --12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like 'Junior %' 

 --13. ������� ����� � �������� Middle ������������

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like 'Middle %' 

 --14. ������� ����� � �������� Senior ������������

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like 'Senior %' 

 --15. ������� �������� Java �������������

select monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like '% Java %'

 --16. ������� �������� Python �������������

select monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like '% Python %'

 --17. ������� ����� � �������� Junior Python �������������

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like 'Junior Python %' 

 --18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like 'Middle JavaScript %' 

 --19. ������� ����� � �������� Senior Java �������������

select employee_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like 'Senior Java %' 

 --20. ������� �������� Junior QA ���������

select monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like 'Junior QA %' 

 --21. ������� ������� �������� ���� Junior ������������

select AVG(monthly_salary) from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like 'Junior %'

 --22. ������� ����� ������� JS �������������

select SUM(monthly_salary) from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like '% JavaScript %'

 --23. ������� ����������� �� QA ���������

select MIN(monthly_salary) from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like '% QA %'

 --24. ������� ������������ �� QA ���������

select MAX(monthly_salary) from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like '% QA %'

 --25. ������� ���������� QA ���������

select count(employee_name) from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like '% QA %'


 --26. ������� ���������� Middle ������������.

select count(employee_name) from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like 'Middle %'

 --27. ������� ���������� �������������

select count(employee_name) from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like '% developer'

 --28. ������� ���� (�����) �������� �������������.

select SUM(monthly_salary) from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where role_name like '% developer'

 --29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
order by monthly_salary asc 


 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, role_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where monthly_salary >= 1700 and monthly_salary <= 2300 
order by monthly_salary asc 

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name, role_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where  monthly_salary <= 2300 
order by monthly_salary asc 

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employee_name, role_name, monthly_salary from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles_3 on roles_employee.role_id = roles_3.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary_3 on employee_salary.salary_id = salary_3.id
where monthly_salary in (1100, 1500, 2000) 
order by monthly_salary asc 


