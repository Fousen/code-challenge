create database q11;
use q11;

create table examination_marks(
record_id varchar(20) primary key not null,
stud_id varchar(20),
student_name varchar(40),
student_standard varchar(30),
student_section varchar(20),
firstlanguage varchar(20),
secondlanguage varchar(20),
thirdlanguage varchar(20),
firstlanguage_marks150 int,
secondlanguage_marks100 int,
thirdlanguage_marks50 int,
generalscience100 int,
mathematics100 int,
socialstudies100 int,
student_total_marks int,
student_avg_marks int,
remarks varchar(100),
student_stud_id varchar(20)
);

create table teacher(
teacher_id varchar(20) primary key not null,
teacher_name varchar(20),
teacher_address varchar(40),
teacher_phone varchar(20),
teacher_email varchar(40),
classteacher_standard varchar(20),
subject_handled varchar(20)
);

create table student(
stud_id varchar(20) primary key not null,
stud_name varchar(40),
stud_standard varchar(30),
stud_section varchar(20),
stud_address varchar(40),
stud_fathersname varchar(40),
stud_fatherscontact varchar(20),
stud_email varchar(40),
stud_classteacher_id varchar(40),
foreign key (stud_classteacher_id) references teacher(teacher_id)
);

insert into examination_marks(record_id,student_name, student_standard, student_avg_marks, generalscience100, mathematics100) 
values ('25','john','ddd',66,75,67),('26','mm','ccc',80,78,90),('27','susy','zzz',99,75,85);

delete from examination_marks;

select student_name, student_standard, student_avg_marks, generalscience100, mathematics100, 
(generalscience100+mathematics100) 'total'
from examination_marks
where student_avg_marks >= 75 and generalscience100 >= 75 and mathematics100 >= 75;