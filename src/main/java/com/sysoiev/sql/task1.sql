create database sqltasks;
use sqltasks;
create table if not exists Customers(Id int,Name varchar(255));

create table if not exists Orders(Id int ,CustomerId int);
drop table Orders;
insert into Customers (Id, Name) values (1, 'Joe');
insert into Customers (Id, Name) values (2, 'Henry');
insert into Customers (Id, Name) values (3, 'Sam');
insert into Customers (Id, Name) values (4, 'Max');
insert into Orders (Id, CustomerId) values (1, 3),(2, 1);
