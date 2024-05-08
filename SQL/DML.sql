--DML: Data Manipulation Language
--commands used to MODIFY the DB. It is responsible for all forms of changes in the database.
--Insert, Update, Delete

--INSERT - insert / CREATE records in the table
--syntax
--method 1---
insert into table_name values (c1,c2,c3,c4) (c1,c2,c3,c4),.......
insert into emp values (101, 'john', 20, 'john@gmail.com'), (102, 'Ron', 22, 'ron@gmail.com')
-----method 2-----
insert into table_name values (c1,c2,c3,c4)
insert into table_name values (c1,c2,c3,c4)
insert into table_name values (c1,c2,c3,c4)
insert into table_name values (c1,c2,c3,c4)
insert into table_name values (103, 'Ramu', 28, 'ramu@gmail.com')
---Method 3-----
-------insert into specific columns ------
insert into table_name(c2,c3) values(value2,value3)
Insert into emp(empid,ename) values(104,’Ravi’)

--UPDATE :It is used to modify an existing value .
--Use Transaction Before update or delete a records because sql is auto committed
--Syntax
--update table_name set column_1=value1, column2=value2,...where condition; ----- without this all values in the column will change
select * into employee_new from employees
select * from employee_new
update employee_new set salary=50000 where employee_id=100
update employee_new set salary=salary+1000 where department_id in(60,90)
update employee_new set commission_pct=1000 where manager_id=101 and department_id in(40,70,100)

-- WAQT update the email to steven@gmail.com whose employee_id =100
update employee_new set email='steven@gmail.com' where employee_id=100

-- WAQT update department_id 90 in to 100
update employee_new set department_id=100 where department_id=90

-- WAQT update 50% salary hike for all employees working in department 100 and job role in AD_VP
update employee_new set salary=salary+(salary*50/100) where department_id=100 and job_id='AD_VP'

-- WAQT update hired date whose id=100
update employee_new set hire_date='1987-06-24' where employee_id=100

-- WAQT update salary 5000 for employees whose having salary below 5000
update employee_new set salary=5000 where salary<5000

-- WAQT update job_id FI_ACCOUNT to DEVELOPER
update employee_new set job_id='DEVELOPER' where job_id='FI_ACCOUNT'

-- Reducing fine amount 1000 from employees salary for id 100,105,110
update employee_new set salary=salary-1000 where employee_id in(100,105,110)

-- WAQT update commission_pct=990 for lex
update employee_new set commission_pct=990 where first_name='lex'

-- WAQT update name for valli
update employee_new set first_name=first_name+'ammal' where first_name='valli'

-- WAQT hike the salary of the employee to 10% If employees earn less than 5000 as a SH_CLERK
update employee_new set salary=salary+(salary*10/100) where salary<5000 and job_id='SH_CLERK'

begin tran
update employee_new set commission_pct=500
rollback tran
--DELETE - It is used to remove a particular record from the table .
--Using delete it just deletes the records not a structure.
--Memory allocation not freed
--delete syntax
delete from table_name; --> deletes all the data
delete from table_name
where clause; ---> delete required data
QUERY
begin tran
delete from employee_new -------------------->Delete all records from a table
rollback tran
delete from employee_new where employee_id=100--------->Delete a particular row
delete from employee_new where first_name='lex'
delete from employee_new where employee_id in(110,111,112)
delete phone_number from employee_new where employee_id=100 ---------We can’t delete a
particular cell if we want to modify a particular cell we just use Update to modify the record.


select first_name,salary from employees where salary>(select AVG(salary) from employees as e1 where e1.department_id=employees.department_id) 
select AVG(salary) from employees group by department_id









