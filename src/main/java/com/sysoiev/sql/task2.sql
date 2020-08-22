use sqltasks;
Create table If Not Exists Employee
(
    Id     int,
    Salary int
);
drop table Employee;
insert into Employee (Id, Salary)
values (1, 100),
       (2, 200),
       (3, 300);
select Salary as SecondHighestSalary
from Employee
limit 1 offset 1;



