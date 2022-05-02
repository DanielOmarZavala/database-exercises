create database if not exists codeup_test_db;

USE codeup_test_db;

create table if not exists users
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255)
);

create table if not exists cats
(
    id int unsigned not null auto_increment primary key,
    breed VARCHAR(255) not null,
    age int unsigned not null,
    name varchar(255)
);

show tables;

describe cats;

drop table if exists cats;