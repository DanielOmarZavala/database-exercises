use codeup_test_db;

alter table users
add unique (username);

describe users;

# insert into users(username, email, first_name, last_name, middle_name)
# values ('bob', 'newbob@bob.com', 'Robert', 'Roberts', 'Robby');

create table if not exists posts
(
    id int unsigned not null auto_increment primary key,
    title varchar(255) not null,
    content text not null,
    user_id int unsigned not null,
    foreign key (user_id) references users (id)
);

describe posts;

insert into posts(title, content, user_id)
values ('New Post', 'Some stuff', 1);