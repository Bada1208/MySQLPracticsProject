use sqltasks;
Create table If Not Exists SomeEmployee
(
    Id        int primary key auto_increment,
    Name      varchar(255),
    Salary    int,
    ManagerId int
);
drop table SomeEmployee;
drop table Manager;
create table if not exists Manager
(
    ManagerId int,
    Name      varchar(255),
    Salary    int,
    foreign key (ManagerId) references SomeEmployee (Id)
);
insert into SomeEmployee (Id, Name, Salary, ManagerId)
values (1, 'Joe', 70000, 3),
       (2, 'Henry', 80000, 4),
       (3, 'Sam', 60000, null),
       (4, 'Max', 90000, null);
insert into Manager
values (3, 'Vasia', 60000),
       (4, 'Valera', 90000);
select Name
from SomeEmployee
where SomeEmployee.Salary > any (select Salary from Manager)
limit 1;



