-- 1st question--
create database college;
use college;

create table student (
rollno int primary key,
name varchar(50)
);

select * from student;

insert into student values
(101,"Aryan"),
(102,"Mahak"),
(103,"Rohan");

insert into student values (104,"Vaibhav");

-- 2 question--

create database xyz;
use xyz;

create table info (

id int primary key,
name varchar(50),
salart int 
);

insert into info values
(1,"adam" ,25000),(2,"bob" ,30000),(3,"casey" ,40000);

select * from info;


-- 3rd question --

create database school;
use school;
create table children(

rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into children values
(101,"Aryan",100,"A","Agra"),
(102,"Raj",40,"D","Jaipur"),
(103,"Vaibhav",90,"B","Nasik"),
(104,"Mahak",98,"A","Agra"),
(105,"Rohan",20,"F","Delhi"),
(106,"Sujal",52,"C","Gwalior");

alter table children
add column age int not null default 18;

alter table children
drop column age;

alter table children
modify column age varchar(2);

alter table children
change age children_age int;

select * from children;

select name ,marks from children;

select distinct city from children;

select * from children where marks > 80;

select * from children where city = "Agra";

select * from children where marks > 50 and marks <=100;

select * from children where marks between 50 and 100;

select * from children where city in ("Agra","Delhi");

select * from children order by marks asc;
select * from children order by marks desc;

select * from children order by city asc;

select max(marks) from children;
select min(marks) from children;
select avg(marks) from children;
select sum(marks) from children;
select count(marks) from children;

select city ,count(rollno)
from children 
group by city;

 delete from children where marks <50;

-- 4th question--

create database company;
use company;
create table payment( 
id int primary key,
name varchar(50),
mode varchar(50),
city varchar(40)
);

insert into payment values
(101,"Ovilia Barrett","Netbanking","Poland"),
(102,"Ehan","Credit Card","Miami"),
(103,"Maya","Credit Card","Seattle"),
(104,"Liam","Netbanking","Denver"),
(105,"Sophia","Credit Card","Orleans"),
(106,"Caleb","Debit Card","Minneapolis"),
(107,"Ava","Debit Card","Phoenix"),
(108,"Lucas","Netbanking","Boston"),
(109,"Isabella","Netbanking","Nashville"),
(110,"Jackson","Credit Card","Boston");
 
select mode ,count(id) from payment
group by mode;

select * from payment;

update payment
set mode ="UPI"
where mode = "Netbanking";
 
 -- question 5 --
 
create database teacher_info;
use teacher_info;
create table dept(

id int primary key,
name varchar(50)
);

insert into dept values
(101,"english"),
(102,"maths");

select * from dept;

update dept 
set id = 103
where id = 102;

create table teachers(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)
on delete cascade
on update cascade
);

insert into teachers values
(101,"Adam",101),
(102,"Eve",102);

select * from teachers;

-- question 6 --

create database joins;

use joins;

create table students (
student_id int primary key,
name varchar(50)
);

insert into students values
(101,"adam"),
(102,"bob"),
(103,"casey");

create table course(
student_id int primary key ,
course varchar(50)
);

insert into course values
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");


select * from students
inner join course on students.student_id = course.student_id;

select * from students
left join course on students.student_id = course.student_id;
 
select * from students
right join course on students.student_id = course.student_id;
 
 
select * from students
left join course on students.student_id = course.student_id
union
select * from students
right join course on students.student_id = course.student_id;

 
select * from students
left join course on students.student_id = course.student_id
where course.student_id is null;

select * from students
right join course on students.student_id = course.student_id
where students.student_id is null;

select student_id from students
union
select student_id from course;

-- question 7--

create database subQuer;
use subQuer;
create table people(

rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into people values
(101,"Aryan",100,"A","Agra"),
(102,"Raj",40,"D","Jaipur"),
(103,"Vaibhav",90,"B","Nasik"),
(104,"Mahak",98,"A","Agra"),
(105,"Rohan",20,"F","Delhi"),
(106,"Sujal",52,"C","Gwalior");

select * from people;

select name from people where marks > (select avg(marks) from people); -- sub queries--

select name from people where rollno in (select rollno from people where rollno % 2 = 0);

select max(marks) from (select * from people where city = "Agra") as temp ;

create view view1 as
select rollno, name , marks from people;

select * from view1;





 











