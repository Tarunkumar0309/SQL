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

insert into user
(id, age, name, email, following)
values
(8, 20, "ram", "rama@yahoo.in", 14500000),
(9, 17, "shyam", "shyam@yahoo.in", 14543200);


-- select id, name, age from user;-- 

-- Where clause-- 

select name , age
from user
-- Where followers >= 200;-- 
Where age < 16;


select name, age, followers

from user

-- where age + 1 = 17;-- 
 
where age > 15 AND followers >200;

select name, age, email
from user 
where age >14
limit 2;

select name, age, followers, following
from user
order by followers ASC; 

SELECT MAX(FOLLOWERS)
FROM USER;

SELECT MAX(AGE)
FROM USER;

SELECT sum(followers)
FROM user;

SELECT  age, max(followers)
FROM user
GROUP BY age
HAVING max(followers) >200
ORDER BY age DESC;

UPDATE user
SET followers = 600
WHERE age = 16;

DELETE FROM user
WHERE age =14;

ALTER TABLE user
ADD COLUMN city VARCHAR(25) DEFAULT "Delhi";

ALTER TABLE user
DROP COLUMN city;

ALTER TABLE user
RENAME TO instaUser;


ALTER TABLE instaUser
RENAME TO user;


ALTER TABLE user
CHANGE COLUMN followers subs INT DEFAULT 0;



ALTER TABLE user
MODIFY subs INT DEFAULT 5;
SELECT *FROM user;



SET SQL_SAFE_UPDATES = 0;



select *from user;

-- TRUNCATE TABLE user;-- 


select distinct age from user;






create table post (
id int primary key,
content varchar(100),
user_id int,
foreign key (user_id) references user(id)
);





