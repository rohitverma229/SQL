-- Query that give employee name & department name from given table

create table Employees 
(
	eno int not null,
    ename varchar(15) not null,
    departno int 
);
alter table Employees change departno deptno int;
insert into Employees
(eno, ename, deptno)
values 
(1, 'abc', 10), (2, 'xyz', 20), (3, 'tuv', null); 
select * from employees;

create table dept
(
	deptno int not null,
    dname varchar(15) not null
);

insert into dept
(deptno, dname)
values(10, 'Sales'), (20, 'Marketing');

select * from dept;

select employees.ename, dept.dname
from dept inner join employees
on employees.deptno = dept.deptno
order by ename;

select distinct employees.eno, employees.ename, employees.deptno, dept.dname
from employees 
left outer join dept
on employees.deptno = dept.deptno
group by dname;

