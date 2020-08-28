use sqltasks;
Create table If Not Exists PersonEmail
(
    Id    int,
    Email varchar(255)
);
insert into PersonEmail (Id, Email)
values (1, 'a@b.com'),
       (2, 'c@d.com'),
       (3, 'a@b.com');
select Email
from PersonEmail
having (count(*) > 1);

