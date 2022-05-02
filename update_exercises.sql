use codeup_test_db;

select name
from albums;

update albums
set sales = sales * 10.0;

select sales
from albums;

-- break

select name
from albums
where release_date < 1980;

update albums
set release_date = 1800
where release_date < 1980;

select name, release_date
from albums
where release_date < 1980;

-- break

select name
from albums
where artist = 'Michael Jackson';

update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select name, artist
from albums
where artist = 'Peter Jackson';

select name, artist
from albums
where artist = 'Michael Jackson';