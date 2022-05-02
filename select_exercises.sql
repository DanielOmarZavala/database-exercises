use codeup_test_db;

select name
from albums
where artist = 'Pink Floyd';

select release_date
from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre
from albums
where artist = 'Nirvana';

select name
from albums
where release_date > 1990 && release_date < 2000;

select name
from albums
where sales < 20.0;

select name
from albums
where genre = 'Rock';