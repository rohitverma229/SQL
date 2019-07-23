-- insurance percentage calculation

create table insurance
(
	ins_id int not null,
    ins_ammount int(8) not null
);

insert into insurance
(ins_id, ins_ammount)
values(1, 100), (2, 101), (3, 125), (4, 104), (5, 106);

select * from insurance;

select distinct insurance.ins_id, 
sum(((insurance.ins_ammount/100)*33)) as premium, 
sum(((insurance.ins_ammount/100)*32)) as brokerage,
sum(((insurance.ins_ammount/100)*34)) as admins
from insurance
group by ins_id;






