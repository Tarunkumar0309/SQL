create database University;

use University;

create table student(
rollno int,
name varchar(30),
age int
);

insert into student
values
(101, "adam", 12),
(102, "bob", 14);

select * from student;

SHOW DATABASES;

create database if not exists instagram;

use instagram;

create table user (

id int,
age int,
name varchar(30) not null,
email varchar(50) unique,
followers int default 0,
following int,
constraint age_check check (age >= 13), primary key (id)
);
insert into user
(id, age, name, email, followers, following)
values
(1, 14, "adam", "adam@yahoo.in", 123, 145),
(2, 15, "bob", "bob123@gmail.com", 200, 200),
(3, 16, "casey", "casey3@email.com", 300, 306),
(4, 15, "donald", "donald@gmail.com", 200, 105);

-- select id, name, age from user;-- 
-- select *from user;-- 

select distinct age from user;






create table post (
id int primary key,
content varchar(100),
user_id int,
foreign key (user_id) references user(id)
);





