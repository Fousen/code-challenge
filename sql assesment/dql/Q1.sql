create database q7;
use q7;

create table customer(
cust_id varchar(10) primary key not null,
cust_name varchar(10) not null,
address varchar(20),
phone_no bigint,
mail_id varchar(20)
);

create table owner (
owner_id varchar(20) primary key not null,
owner_name varchar(20),
address varchar(20),
phone_no bigint,
mail_id varchar(20)
);

create table laptop(
laptop_id varchar(20) primary key not null,
laptop_name varchar(20),
laptop_ostype varchar(20),
owner_id varchar(20),
foreign key (owner_id) references owner(owner_id)
);

create table zeerentals(
rental_id varchar(10) primary key not null,
cust_id varchar(10),
laptop_id varchar(10),
pick_date date,
return_date date,
amount bigint,
foreign key (cust_id) references customer(cust_id),
foreign key (laptop_id) references laptop (laptop_id)
);


select rental_id, cust_id, laptop_id, amount, amount, rpad(amount, 10, '')  as modified_amount from zeerentals
where pick_date between (2020-05-01 and 2020-05-31) and amount > 7000 
order by rental_id asc;

select*from zeerentals;