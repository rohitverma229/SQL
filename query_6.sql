create table category
(
category_id int auto_increment primary key,
name varchar(20) not null,
parent INT DEFAULT NULL
);

insert into category
values
(1,'M',NULL),(2,'C1',1),(3,'C2',1),
(4,'C3',2),(5,'C4',2),(6,'C5',3),
(7,'C6',3);

select * from category order by category_id;

select t1.name as lev1, t2.name as lev2, t3.name as lev3
from category as t1
left join category as t2 on t2.parent = t1.category_id
left join category as t3 on t3.parent = t2.category_id
where t1.name = 'M' and t3.name = 'C6';
