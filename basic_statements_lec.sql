use codeup_test_db;

insert into users(username, email, first_name, last_name, middle_name)
values ('ry.sutton', 'ry.sutton@codeup.com', 'Ry', 'Sutton', 'Ance'),
       ('casey.edwards', 'casey.edwards#codeup.com', 'Casey', 'Edwards', NULL);

select id, username, email
from users;

select *
from users;

select *
from users
where id > 1;
-- where first_name = 'Sutton';
-- where middle_name IS NULL;
-- where last_name LIKE 'R%;

update users
set last_name = 'Blah'
where first_name = 'Ry';

select * from users where id = 1;

delete from users where first_name = 'Ry';

delete from users where username = 'jreich';

insert into users (username, email, first_name, last_name, middle_name)
values ('bob', 'bob@bob.com', 'Bob', 'Bobberson', 'Robby');

-- truncate table users;