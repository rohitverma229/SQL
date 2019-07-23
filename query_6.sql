-- Query that gives immidiate cild from the master(parent) node

create table nested_category (
 category_id int auto_increment primary key,
 name varchar(20) not null,
 lft int not null,
 rgt int not null
);

insert into nested_category
values(1,'M',1,14),(2,'C1',2,7),(3,'C2',8,13),
(4,'C3',3,4),(5,'C4',5,6),(6,'C5',9,8),
(7,'C6',11,12);

select node.name
from nested_category as node,
nested_category as parent
where node.lft between parent.lft and parent.rgt
and parent.name = 'C1'
order by node.lft;
