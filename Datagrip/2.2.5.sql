# view databases
-- show Databases;
-- this is a comment

/*
 multi lines comments
 */

-- use database
use sakila;

-- check the current used databases
select database();

-- view tables
show tables;

-- create new table
create table student(
    id int,
    name varchar(20),
    age int,
    gpa float
);

-- delete table
drop table student;

-- charset utf8 no need
create database test charset utf8;

show databases;

-- delete test database
drop database test;