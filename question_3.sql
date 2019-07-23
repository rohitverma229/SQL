-- Query that give how many inactive recorde are there for an employee

create table emp_status
(
	eno int not null,
    first_name varchar(10) not null,
    last_name varchar(10) not null,
    act_i varchar (5) not null
);

insert into emp_status
(eno, first_name, last_name, act_i)
values(1, 'Rajesh','verma','N'),
(1, 'Rajesh','verma','N'),
(1, 'Rajesh','verma','Y'),
(1, 'Rajesh','verma','N'),
(2, 'Rohit','verma','Y');

select * from emp_status;

select A.eno, A.first_name, A.last_name, A.act_i, count(*) as statuss
from emp_status as A
where A.act_i = 'N' and A.eno = 1 ;
