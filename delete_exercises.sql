use codeup_test_db;

delete from albums where release_date < 1991;

delete from albums where genre = 'disco';

delete from albums where artist = 'Whitney Houston';

select name
from albums
where release_date < 1991;

select name
from albums
where genre = 'disco';

select name
from albums
where artist = 'Whitney Houston';