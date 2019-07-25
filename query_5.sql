create table insurance
(
	ins_id int not null,
    ins_ammount int(8) not null
);

insert into insurance
(ins_id, ins_ammount)
values(1, 100), (2, 101), (3, 125), (4, 104), (5, 106);

select * from insurance;

select insurance.ins_id, insurance.ins_ammount,    
cast((insurance.ins_ammount/100)*33 as signed) as premium, 
cast((insurance.ins_ammount/100)*32 as signed) as brokerage,
	(
		select insurance.ins_ammount-(premium + brokerage 
        + (cast((insurance.ins_ammount/100)*35 as signed))) 
        + (cast((insurance.ins_ammount/100)*35 as signed)) 
	) as admins
from insurance;



