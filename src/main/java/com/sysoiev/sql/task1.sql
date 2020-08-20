use sqltasks;
Create table if not exists Person
(
    PersonId  int primary key auto_increment,
    FirstName varchar(255),
    LastName  varchar(255)
);
Create table if not exists Address
(
    AddressId int primary key auto_increment,
    PersonId  int,
    City      varchar(255),
    State     varchar(255),
    foreign key (PersonId) references Person (PersonId)
);
insert into Person (PersonId, LastName, FirstName)
values (1, 'Wang', 'Allen'),
       (2, 'Vasia', 'Vasev'),
       (3, 'valera', 'Ivanov');
insert into Address (AddressId, PersonId, City, State)
values (1, 2, 'New York City', 'New York'),
       (2, 1, 'Moscow', 'Moscowskaya'),
       (3, 3, 'Kiev', 'Kievskaya');
select Person.FirstName, Person.LastName, Address.City, Address.State
from Person,
     Address
where Person.PersonId = Address.AddressId;


