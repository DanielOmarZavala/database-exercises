use employees;

describe departments;
describe dept_emp;
describe employees;

use codeup_test_db;

alter table albums
add unique (artist, name);

insert into albums(artist, name, release_date, sales, genre)
values ('Michael Jackson', 'Thriller', 1999, 5.5, 'Pop')