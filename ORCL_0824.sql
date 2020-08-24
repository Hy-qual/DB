desc test2;

select ceil(6.34) from dual;
select floor(3.46) from dual;

select * from tab;

desc user_constraints;

select constraint_name, constraint_type, search_condition, 
r_constraint_name
FROM user_constraints
where table_name = 'TEST2';

create table test3
( id number(10) constraint t3_id_pk primary key,
name varchar2(30) constraint t3_name_nn not null,
job varchar2(20),
email varchar2(20),
phone varchar2(20) constraint t3_ph_nn not null
constraint t3_ph_uk unique,
start_date date,
constraint t3_email_uk unique(email)
);

select constraint_name, constraint_type, search_condition, r_constraint_name
FROM user_constraints con, user_cons_columns col
where con.sconstraint table_name = 'TEST2';

SELECT con.constraint_name, col.column_name ,con.constraint_type,
con.search_condition, con.r_constraint_name
FROM user_constraints con, user_cons_columns col
WHERE con.constraint_name = col.constraint_name
AND con.table_name = 'TEST3';

create table dept80
AS
select employee_id, last_name, salary*12 ANNSAL, hire_date 
from employees where department_id = 80;

select * from dept80;

select * from employees where department_id = 80;

create table dept90
AS
select employee_id, last_name, salary*12, hire_date 
from employees where department_id = 80;

select * from sales_reps;

SELECT con.constraint_name, col.column_name ,con.constraint_type,
con.search_condition, con.r_constraint_name
FROM user_constraints con, user_cons_columns col
WHERE con.constraint_name = col.constraint_name
AND con.table_name = 'EMPLOYEES';

ALTER TABLE dept80
ADD (job_id Varchar2(9));

desc dept80;

alter table dept80
modify (last_name VARCHAR2(30));

alter table dept80
modify (job_id Varchar2(9));

alter table dept80
DROP column job_id;

create table emp2
AS select*from employees;

select * from emp2;

SELECT con.constraint_name, col.column_name ,con.constraint_type,
con.search_condition, con.r_constraint_name
FROM user_constraints con, user_cons_columns col
WHERE con.constraint_name = col.constraint_name
AND con.table_name = 'EMPLOYEES';

SELECT con.constraint_name, col.column_name ,con.constraint_type,
con.search_condition, con.r_constraint_name
FROM user_constraints con, user_cons_columns col
WHERE con.constraint_name = col.constraint_name
AND con.table_name = 'EMP2';

ALTER TABLE EMP2
MODIFY CONSTRAINT emp_mgr_fk
FOREIGN KEY(manager_id)
REFERENCES EMP2(employee_id);

ALTER TABLE emp2
ADD CONSTRAINT emp2_emp_id_pk
PRIMARY KEY(employee_id);

alter table emp2
ADD CONSTRAINT emp2_mgr_fk
FOREIGN KEY(manager_id)
REFERENCES emp2(employee_id);


delete emp2;
select * from emp2;

alter table emp2
drop constraint emp2_mgr_fk;

insert into emp2(employee_id, last_name, email, hire_date, job_id, manager_id) values(100, 'kim', 'kkkk', sysdate, 'novice', 102);

select * from emp2;

alter table emp2
disable constraint emp2_mgr_fk;


drop table dept80;

select original_name, operation, droptime FROM recyclebin;

select * from dept80;
-- 주석
select * from tab;