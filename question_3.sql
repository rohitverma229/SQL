create table maintable
(
	company char(5) not null,
    accoutnt varchar(5) not null,
    acti_status varchar(10) not null
);

alter table maintable 
change accoutnt account varchar(5) not null;

insert into maintable 
(company, account, acti_status)
values
('A','A123', 'Active'),
('A','A123', 'Inactive'),
('B','B123', 'Inactive');

select * from maintable;

create table ref_table
(
	rcompany char(5) not null, 
    raccount varchar(5) not null
);

insert into ref_table
(rcompany, raccount)
values
('A', 'A123'),
('B', 'B123'),
('C', 'C123');

select * from ref_table;

select ref_table.*, M1.acti_status
from ref_table
inner join maintable as M1
		on M1.company = ref_table.rcompany
		and M1.account = ref_table.raccount and M1.acti_status = 'inactive'
left join maintable as M2 on M2.company = ref_table.rcompany
                   and M2.account = ref_table.raccount -- or no active account at all?
                   and M2.acti_status  = 'active'
WHERE  M2.company IS NULL;