create database q6;
use q6;

create table plan(
plan_amount int primary key not null,
validity_indays int,
local_voice_inmins_perday_sn int,
local_voice_inmins_perday_on int,
std_voice_inmins_perday_sn int,
std_voice_inmins_perday_on int,
data_ingb_perday double(3,1),
sms_perday int,
plan_type varchar(10)
);

create table customer(
phone_number varchar(10) primary key not null,
customer_name varchar(20),
email_id varchar(35),
address varchar(50)
);

create table subscription(
phone_number varchar(10),
plan_amount int,
recharge_date date,
expiry_date date,
foreign key (phone_number) references customer(phone_number),
foreign key (plan_amount) references plan(plan_amount)
);