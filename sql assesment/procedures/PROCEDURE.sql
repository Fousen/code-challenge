delimiter go
use q12 go

insert into pet values ('J6-8532','BLACKIE','DOG','MALE',11,1070),('M0-2904','SIMBA','CAT','MALE',1,2419),('P2-7342','CUDDLES','DOG','MALE',13,2863) go
insert into pet_owner values (1070,'JESSICA','VELAZQUES','3861 WOODLANE BRIDGE','SOUTHFIELD','MICHIGAN',48034),(2419,'LUISA','CUELLAR','1308 SHINGLETON ROAD','KALAMZOO','MICHIGAN',49007),(2863,'JOHN','SEBASTIAN','3221 PENNY STREET','DAVISON','MICHIGAN',48423) go
insert into procedure_history values ('J6-8532', 20170307,'VACCINATIONS','GALAXIE'),('M0-2904', 20160118,'GENERAL SURGERIES','DECLAW'),('P2-7342', 20161214,'HOSPITALIZATION','ALL HOSPITALIZATION') go


delimiter $$
create procedure usp_PetProcedureDetails (in procedure_type varchar(50))
begin
select pet.pet_id, pet.name as pet_name, pet_owner.name as owner_name, procedure_history.description 
from ((pet_owner join pet on pet_owner.owner_id = pet.owner_id) join procedure_history on pet.pet_id = procedure_history.pet_id)
where procedure_history.procedure_type = procedure_type;
end $$
delimiter go


call usp_PetProcedureDetails ('GENERAL SURGERIES') go

