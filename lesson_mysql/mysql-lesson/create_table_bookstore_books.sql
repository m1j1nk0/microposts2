CREATE TABLE bookstore.books(
  id int auto_increment not null primary key,
  title varchar(100),
  price int,
  created_at timestamp not null default current_timestamp
);