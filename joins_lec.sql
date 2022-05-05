create database if not exists fortran_db;
use fortran_db;

create table if not exists teams
(
    id   int unsigned not null auto_increment primary key,
    city varchar(255) not null,
    name varchar(255) not null
);

create table if not exists players
(
    id            int unsigned     not null auto_increment primary key,
    first_name    varchar(255)     not null,
    last_name     varchar(255)     not null,
    jersey_number int unsigned     not null,
    is_active     tinyint unsigned not null,
    team_id       int unsigned,
    foreign key (team_id) references teams (id)
);

create table if not exists positions
(
    id       int unsigned not null auto_increment primary key,
    position char(2)
);

# associate table - many to many
create table if not exists player_position
(
    player_id   int unsigned not null,
    position_id int unsigned not null,
    foreign key (player_id) references players (id),
    foreign key (position_id) references positions (id)
);

insert into teams (city, name)
values ('Arlington', 'Texas Rangers'),
       ('Houston', 'Astros'),
       ('Los Angeles', 'Dodgers'),
       ('Washington', 'Nationals'),
       ('San Fransisco', 'Giants'),
       ('Boston', 'Red Sox'),
       ('Cleveland', 'Guardians');


insert into players (first_name, last_name, jersey_number, is_active, team_id)
values ('Corey', 'Seager', 5, 1, 1),
       ('Luis', 'Garcia', 77, 1, 2),
       ('Kenny', 'Powers', 99, 0, NULL);

insert into positions (position)
values ('SS'),
       ('2B'),
       ('P'),
       ('C'),
       ('RF'),
       ('CF'),
       ('LF');

insert into player_position
values (1, 1),
       (2, 3),
       (3, 3);


# what do we want
# get player and team name for each player that has a team assoc
select concat(p.first_name, p.last_name) as player,
       t.name                              as team
#from where
from players as p
# make connection between tables
         join teams as t on p.team_id = t.id;



# what do we want
# get player and team name for each player that has a team assoc
select concat(p.first_name, p.last_name) as player,
       t.name                              as team
#from where
from players as p
# make connection between tables
         left join teams as t on p.team_id = t.id;



# what do we want
# get player and team name for each player that has a team assoc
select concat(p.first_name, p.last_name) as player,
       t.name                              as team
#from where
from players as p
# make connection between tables
         right join teams as t on p.team_id = t.id;


# get player and position
select concat(p.first_name, ' ', p.last_name) as Player,
       pos.position                           as Position
from players as p
         join player_position as pp on p.id = pp.player_id
         join positions as pos on pp.position_id = pos.id;

# get player and position with a where clause
select concat(p.first_name, ' ', p.last_name) as Player,
       pos.position                           as Position
from players as p
         join player_position as pp on p.id = pp.player_id
         join positions as pos on pp.position_id = pos.id
where p.last_name = 'Seager';


# exercise aid start
use employees;


select d.dept_name as 'Department Name',
       concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
join dept_manager dm on e.emp_no = dm.emp_no
join departments as d on d.dept_no = dm.dept_no
where dm.to_date > curdate();