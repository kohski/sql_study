-- create table Shohin(
--     id char(4) not null,
--     name varchar(100) not null,
--     category varchar(32) not null,
--     sales_price integer default 0,
--     purchase_price integer,
--     register_date date,
--     primary key(id)
-- );


-- begin transaction;
--   insert into Shohin values('0001','Tshirt','clothes',1000,500,'2008-09-20');
--   insert into Shohin values ('0002','punch','stationary',500,320,'2008-09-11');
--   insert into Shohin values ('0003','cutter shirt','clothes',4000,2800,Null);
-- commit;

-- create table ShohinSaeki (
--     id char(4) not null,
--     name varchar(100) not null,
--     category varchar(32) not null,
--     sales_price integer default 0,
--     purchase_price integer,
--     saeki integer,
--     primary key(id)
-- )

-- insert into ShohinSaeki select id, name, category, sales_price, purchase_price, sales_price - purchase_price from Shohin;
-- update ShohinSaeki set sales_price = 3000, saeki = 200 where id = '0003';