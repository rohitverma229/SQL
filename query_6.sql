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
(7,'C6',2),(8,'C7',2),(9,'C8',3),(10,'C9',5),
(11,'C10',5),(12,'C11',2),(13,'C12',2),(14,'C13',2),
(15,'C14',2),(16,'C15',5),(17,'C16',5),(18,'C17',5);
truncate table nested_category;

		
select * from nested_category;

select a.name,b.name,c.name from nested_category a
left join nested_category b on a.category_id=b.parent_id
left join nested_category c on b.category_id=c.parent_id
where a.name='M';

select a.name,b.name from nested_category a
join nested_category b on a.category_id=b.parent_id
where a.name='M'
