CREATE TABLE users
(
    id serial not null unique,
    name varchar(255) not null,
    username varchar(255) not null unique,
    password_hash varchar(255) not null
);

CREATE TABLE title
(
    id serial not null unique,
    name varchar(255) not null,
    user_id int references users (id) on delete cascade not null
);