-- List 10 MAX salaries & AVG Salary of employees in a department
 create table employees_1
 (
	emp_id int not null,
    emp_name varchar(20) not null,
    salary int not null,
    dept_id int,
    primary key (emp_id)
 );
 
 insert into employees_1
 (emp_id, emp_name, salary, dept_id)
 values 
 (1,'Ethan Hunt', 5000, 4),
 (2,'Tony Montana', 6500, 1),
 (3,'Sarah Connor', 8000, 5),
 (4,'Rick Deckard', 7200, 3),
 (5,'Martin Blank', 5600, null),
 (6,'simons bistro', 6000, 1),
 (7,'Janet Leverling', 5200, 5),
 (8,'Steven Buchanan', 4750, 5),
 (9,'Laura Callahan', 3850, null),
 (10,'Nancy Davolio', 4800, 3);
 
 select * from employees_1;
 
 create table dept_1
 (
	dept_id int not null,
    dept_name varchar(20) not null
 );
 
 insert into  dept_1
 (dept_id, dept_name)
 values 
 (1, 'Administration'), 
 (2, 'Custormer Service'),
 (3, 'Finance'),
 (4, 'Human Resource'),
 (5, 'Sales');
 

select distinct dept_1.dept_name, employees_1.emp_id, employees_1.emp_name, employees_1.salary
from employees_1
inner join dept_1 on employees_1.dept_id = dept_1.dept_id
inner join
	(
		select employees_1.dept_id, max(employees_1.salary) sal /* avg(employees_1.salary) sal */
		from employees_1
		group by employees_1.dept_id
	) ss on employees_1.dept_id = ss.dept_id and employees_1.salary = ss.sal
order by employees_1.salary desc limit 2;

