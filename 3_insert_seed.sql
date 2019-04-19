-- create table ProductIns (
--   id char(4) not null,
--   name varchar(100) not null,
--   category varchar(32) not null,
--   sales_price integer default 0,
--   purchase_price integer,
--   register_date date,
--   primary key(id)
-- );

-- insert into ProductIns (id, name, category, sales_price, purchase_price) values ('0001','Tshirt','clothes',1000,500);
-- 省略リスト
-- insert into ProductIns (id, name, category, sales_price, purchase_price, register_date) values ('0002','Punch','stationary',500,320,'2009-09-11'),
-- ('0003','Cutter Shirt','clothes',4000,2800,null),
-- ('0004','Knife','kitchen goods',3000,2800,'2009-09-20');

-- insert into ProductIns values ('0005','pressure cooker','kitchen goods', 6800,5000,'2009-01-15');
-- insert into ProductIns (id, name, category, sales_price, purchase_price, register_date) values ('0006','fork','kitchen goods',500,null,'2009-09-20');
-- insert into ProductIns (id, name, category, sales_price, purchase_price, register_date) values ('0007','oroshigane','kitchen goods',default,790,'2009-04-28');

-- create table ProductCopy(
--     id char(4) not null,
--     name varchar(100) not null,
--     category varchar(32) not null,
--     sales_price integer default 0,
--     purchase_price integer,
--     register_date date,
--     primary key(id)
-- );

-- insert into ProductCopy (id, name, category, sales_price, purchase_price, register_date) select id, name, category, sales_price, purchase_price, register_date from Products;

-- create table CategoryCopy (
--   category varchar(32) not null,
--   sum_sales_price integer,
--   sum_purchase_price integer,
--   primary key (category)
-- );

-- insert into CategoryCopy (category, sum_sales_price, sum_purchase_price) select category,sum(sales_price),sum(purchase_price) from products group by ctegory;
