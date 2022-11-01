use q3;

update t_doctor
set fee = 350 where specialization = 'ENT' and doctor_name = 'J%';

update t_doctor
set fee = 600 where specialization = 'Derma' and doctor_name = 'J%';

select*from t_doctor;