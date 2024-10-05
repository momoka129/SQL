create database school;

select database();

use school;

create table student(
    id int,
    name varchar(10),
    age int
);

show tables;

insert into student(id) values(1),(2),(3);

insert into student(id, name, age) values (4,'Zhou',32),(5,'Qi',20);

delete from student where id < 2;

update student set name='Dalier', age=35 where id = 2;