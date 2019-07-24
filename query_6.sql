create table nested_category (
 category_id int auto_increment primary key,
 name varchar(20) not null,
 parent_id int
);

insert into nested_category
(category_id, name, parent_id)
values
(1,'M',null),(2,'C1',1),(3,'C2',1),
(4,'C3',1),(5,'C4',1),(6,'C5',2),
(7,'C6',2),(8,'C7',2),(9,'C8',1),(10,'C9',3),
(11,'C10',3),(12,'C11',6),(13,'C12',6),(14,'C13',6),
(15,'C14',6),(16,'C15',4),(17,'C16',4),(18,'C17',4);

truncate table nested_category;

select distinct t1.name as lev1, t2.name as lev2, t3.name as lev3, t4.name as lev4
from nested_category as t1
left join nested_category as t2 on t2.parent_id = t1.category_id
left join nested_category as t3 on t3.parent_id = t2.category_id
left join nested_category as t4 on t4.parent_id = t3.category_id
where t1.name = 'C2';
