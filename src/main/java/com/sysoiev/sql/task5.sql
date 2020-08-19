create database sqltasks;
use sqltasks;
create table if not exists Customers
(
    Id   int primary key auto_increment,
    Name varchar(255)
);

create table if not exists Orders
(
    Id         int primary key auto_increment,
    CustomerId int,
    FOREIGN KEY (CustomerId) REFERENCES Customers (Id)
);
insert into Customers (Id, Name)
values (1, 'Joe'),
       (2, 'Henry'),
       (3, 'Sam'),
       (4, 'Max');
insert into Orders (Id, CustomerId)
values (1, 3),
       (2, 1);
drop table Customers;
drop table Orders;
SELECT Name
FROM Customers
         LEFT JOIN Orders ON Customers.Id = Orders.CustomerId
WHERE Orders.CustomerId IS NULL;