select database()

use school;

show tables;

select *
from student;

select * from student order by age;

select * from student order by age desc;

-- only view 5 records
select * from student limit 5;

-- ignore first record, view the following 3 records
select * from student limit 1, 3;

select gender,min(age), max(age) from student where age<20 group by gender

/*
 select column||functions||* from table
 where ...
 group by ...
 order by ... [asc||desc]
 limit n || [m,n]
 */