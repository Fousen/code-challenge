use q3;

update t_doctor
set fee =
	case specialization 
    when 'ENT' then 350
    when 'Derma' then 600
    else fee
end
where doctor_name like 'J%';

