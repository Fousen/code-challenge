create database q9;
use q9;

create table grade(
grade varchar(3),
min_salary int,
max_salary int
);

create table department(
dept_id int primary key not null,
dept_name varchar(25)
);

create table staff(
staff_id int primary key not null,
staff_name varchar(25),
supervisor_id int(11),
salary bigint,
join_date date,
dept_id int,
foreign key (dept_id) references department(dept_id)
);


select staff_id, staff_name, salary, dept_id, avg(salary) from staff  
where dept_id in(select dept_id from department) and dept_id = 10
having salary > avg(salary)
order by staff_id asc;