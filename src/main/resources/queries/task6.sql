use sqltasks;
Create table If Not Exists courses
(
    student varchar(255),
    class   varchar(255)
);
insert into courses (student, class)
values ('A', 'Math'),
       ('B', 'English'),
       ('C', 'Math'),
       ('D', 'Biology'),
       ('E', 'Math'),
       ('F', 'Computer'),
       ('G', 'Math'),
       ('H', 'Math'),
       ('I', 'Math');
select class
from courses having (count(class >= 5));
