use fortran_db;

# get all players for specific team by team name
select concat(p.first_name, ' ', p.last_name)
from players as p
where team_id in (
    select id
    from teams
    where name like '%Rangers%'
);

# get all players for a specific position
select concat(p.first_name, ' ', p.last_name)
from players p
where id in (
    select player_id
    from player_position
    where position_id in (
        select id
        from positions
        where position = 'P'
    )
);


insert into players (first_name, last_name, jersey_number, is_active, team_id)
values ('Codey', 'Duck', 13, 1,
        (select id from teams where name = 'Astros'));

update players
set team_id = (select id from teams where name = 'Nationals')
where first_name = 'Codey';