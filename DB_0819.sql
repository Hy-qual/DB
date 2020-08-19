select e.employee_id, e.department_id, d.department_name
from employees e join departments d
on e.department_id = d.department_id;

select employee_id,
last_name, manager_id
from employees;

select e.employee_id "employees", e.last_name, e.salary, d.department_id, d.department_name
from employees e join departments d
on e.employee_id = d.department_id;

select e.last_name "Employee", e.employee_id "Emp#", e1.last_name, e.manager_id "Mgr#"
from employees e join employees e1
on e.manager_id = e1.employee_id;

select e.last_name "Employee", e.employee_id "Emp#", e1.last_name, e.manager_id "Mgr#"
from employees e join employees e1
on e.manager_id = e1.employee_id
order by e.employee_id;

select e.employee_id, d.department_id, d.department_name, 
d.location_id, l.city, l.country_id, c.country_name, r.region_id, r.region_name
from employees e
Join departments d
On e.department_id = d.department_id
Join locations l
on d.location_id = l.location_id
Join countries c 
on l.country_id = c.country_id
join regions r
On c.region_id = r.region_id;

-- 서브 쿼리
select employee_id, last_name, salary  -- mainquery or outerquery
From employees 
where salary > (SELECT salary from employees where last_name = 'Abel'); --subquery or innerquery

select last_name, job_id, salary
From employees
where salary = (select min(salary) from employees);

select department_id, min(salary)
from employees
group by department_id
Having min(salary) > (select min(salary) from employees where department_id = 50);

select department_id, Salary
from employees 
where department_id = 50;

select a.last_name, a.salary, a.department_id, b.salavg
from employees a join(select department_id, AVG(salary) salavg from employees group by department_id) b
on a.department_id = b.department_id
and a.salary > b.salavg;

select AVG(salary)
from employees;

select AVG(salary)
from employees;
--연습문제 p.24
select a.employee_id, a.last_name, a.salary
from  employees a
where salary > (select AVG(salary)
from employees)
order by salary Asc;

