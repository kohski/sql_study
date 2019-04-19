CREATE TABLE products (
  id char(4) not null ,
  name varchar(100) not null,
  category varchar(32) not null,
  sales_price integer,
  purchase_price integer,
  register_date date,
  primary key(id)
);