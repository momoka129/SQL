create database school;

select database();

use school;

create table student(
    id int,
    name varchar(10),
    age int
);

-- add a column
alter table student add gender varchar(6);

show tables;

insert into student(id) values(1),(2),(3);

insert into student(id, name, age, gender) values (4,'Zhou',32,'male'),(5,'Qi',20,'male');
insert into student(id, name, age, gender) values (6,'Piper',16,'female'),(7,'Panes',15,'female');

delete from student where id < 2;

update student set name='Dalier', age=35 where id = 2;

select id, name from student;

select * from student;

select * from student where age > 30;

-- group by 出现了哪个列 哪个列才能出现在select的非聚合中
select gender, avg(age), sum(age), min(age), max(age), count(*) from student group by gender;