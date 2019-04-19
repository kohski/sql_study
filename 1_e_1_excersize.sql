create table addresses (
  id integer not null,
  name varchar(128) not null,
  address varchar(256) not null,
  tel_no char(10),
  mail_address char(20),
  primary key(id)
)
