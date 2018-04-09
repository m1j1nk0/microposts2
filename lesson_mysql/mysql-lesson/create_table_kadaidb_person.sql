CREATE TABLE kadaidb.person(
  id int auto_increment not null primary key,
  name varchar(50),
  age int,
  created_at timestamp not null default current_timestamp
);