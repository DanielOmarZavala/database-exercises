USE codeup_test_db;

drop table if exists albums

create table if not exists albums(
id int unsigned not null auto_increment primary key,
artist varchar(255) not null,
name varchar(255) not null,
release_date int unsigned not null,
sales float unsigned not null,
genre varchar(255)
);

show tables;

describe albums;