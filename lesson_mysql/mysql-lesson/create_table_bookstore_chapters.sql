create table bookstore.chapters(
id int auto_increment not null primary key,
number int,
title varchar(100),
book_id int,
created_at timestamp not null default current_timestamp
)