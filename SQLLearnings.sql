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
create table post (
id int primary key,
content varchar(100),
user_id int,
foreign key (user_id) references user(id)
);





