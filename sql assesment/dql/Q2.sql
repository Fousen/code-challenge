create database q8;
use q8;

create table customer_details(
customer_id varchar(10) primary key not null,
customer_name varchar(30) not null,
phone_no varchar(10) not null,
city varchar(20)
);

create table pet_details(
pet_id varchar(5) primary key not null,
prt_name varchar(30) not null,
pet_type varchar (10) not null,
breed varchar(20),
gender varchar(2),
age_in_days int,
price double(7,2)
);

create table purchase_details(
purchase_id int primary key not null,
customer_id varchar(10) not null,
pet_id varchar(5) not null,
purchase_date date,
total_amount_paid double(8,2),
foreign key (customer_id) references customer_details(customer_id),
foreign key (pet_id) references pet_details(pet_id)
 );
 
SELECT customer_details.customer_id, customer_details.customer_name, count(purchase_details.pet_id) as no_of_pets
FROM purchase_details join customer_details 
on purchase_details.customer_id = customer_details.customer_id
order by customer_id;
 