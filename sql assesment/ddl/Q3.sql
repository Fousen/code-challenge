create database q3;
use q3;

create table t_doctor(
doctor_id int primary key not null,
doctor_name varchar(25),
mobile_no int,
email varchar(30),
specialization varchar(10),
fee int
);

create table t_patient(
patient_id varchar(10) primary key not null,
patient_name varchar(30),
gender char(2),
ailment varchar(20),
doctor_id int,
foreign key (doctor_id) references t_doctor(doctor_id)
);

create table t_hospital(
available_doctor int,
shift_time varchar(20)
);

alter table t_hospital
add foreign key (available_doctor) references t_doctor(doctor_id);