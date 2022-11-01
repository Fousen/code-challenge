create database q10;
use q10;

create table customer(
cust_id varchar(10) primary key not null,
cust_name varchar (20),
cust_phone bigint,
cust_address varchar(20)
);

create table delivery_partner(
partner_id varchar(10) primary key not null,
partner_name varchar(15),
rating bigint(20)
);

create table pizza(
pizza_id varchar(10) primary key not null,
cust_id varchar(10),
partner_id varchar(10),
pizza_name varchar(15),
pizza_type varchar(15),
order_date date,
amount bigint,
foreign key (cust_id) references customer(cust_id),
foreign key (partner_id) references delivery_partner(partner_id)
);

insert into pizza (pizza_id, pizza_name,amount) values ('23','chicken',600),('24','cheese',500),('25','cheese',500),('26','cheese',500);
delete from pizza;

select pizza_name, count(amount) as no_sold
from pizza group by pizza_name order by no_sold desc limit 1;