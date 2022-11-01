delimiter go
create database q12 go
use q12 go


create table pet_owner(
owner_id int primary key not null,
name varchar(50),
surname varchar(50),
street_address varchar(100),
city varchar(100),
state varchar(10),
zipcode int
) go

create table pet(
pet_id varchar(10) primary key not null,
name varchar(20),
kind varchar(10),
gender varchar(6),
age int,
owner_id int
) go

create table procedure_history(
pet_id varchar(10),
procedure_date date,
procedure_type varchar(50),
description varchar(100)
) go

alter table pet_owner alter state set default 'Michigan' go

alter table pet add foreign key (owner_id) references pet_owner(owner_id) go

alter table procedure_history add foreign key (pet_id) references pet(pet_id) go


