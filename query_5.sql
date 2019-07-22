create table assemblies
(
	Aid int not null,
    Aname varchar(10) not null
);

insert into assemblies
(Aid, Aname)
values
(1, 'assem X'),
(2, 'assem Y'),
(3, 'assem Z');

create table parts
(
	Pid int not null,
    Pname varchar(10) not null,
    Aid int not null
);

insert into parts
(Pid, Pname, Aid)
values(1, 'part A', 1),
(2, 'part B', 1),
(3, 'part C', 1),
(4, 'part D', 1),
(5, 'part A', 2),
(6, 'part B', 2),
(7, 'part C', 3),
(8, 'part D', 3);

select A.*, P.*
from assemblies A
left join parts P using (Aid);

SELECT A.*, p.* 
FROM assemblies A
LEFT JOIN parts P USING (Aid)
WHERE P.Pname='Part B';

SELECT A.*, P.* 
FROM assemblies A
LEFT JOIN parts P USING (Aid)
WHERE P.Aid IN 
  (
    SELECT Aid FROM parts WHERE Pname = 'Part B'
  );