create table insurance
(
	ins_id int not null,
    ins_ammount int(8) not null
);

insert into insurance
(ins_id, ins_ammount)
values(1, 100), (2, 101), (3, 125), (4, 104), (5, 106);

select * from insurance;

select distinct insurance.ins_ammount , ((ins_ammount/100)*33) as premium 
from insurance where ins_id = 1;



union all
select distinct insurance.ins_ammount , ((ins_ammount/100)*32) as brokerage
from insurance where ins_id = 1 
union all
select distinct insurance.ins_ammount , ((ins_ammount/100)*34) as admin
from insurance where ins_id = 1;



