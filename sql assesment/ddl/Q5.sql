create database q5;
use q5;

create table t_hall_details(
hall_id varchar(10) primary key not null,
hall_name varchar(25),
city varchar(20),
hall_type varchar(10),
capacity int,
cost_perday int
);

create table t_customer_details(
customer_id varchar(10) primary key not null,
customer_name varchar(20),
mobile_no int,
cudtomer_city varchar(20)
);

create table t_hall_booking(
hall_id varchar(10),
customer_id varchar(10),
event_name varchar(20),
event_date date
);


alter table t_hall_booking
add foreign key (hall_id) references t_hall_details(hall_id),
add foreign key (customer_id) references t_customer_details(customer_id);