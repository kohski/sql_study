-- create table if not exists ShopProduct(
--   id char(4) not null,
--   name char(200) not null,
--   product_id char(4) not null,
--   quantity integer not null,
--   primary key (id, product_id) 
-- )

-- BEGIN TRANSACTION;
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000A',	'東京',		'0001',	30);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000A',	'東京',		'0002',	50);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000A',	'東京',		'0003',	15);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000B',	'名古屋',	'0002',	30);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000B',	'名古屋',	'0003',	120);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000B',	'名古屋',	'0004',	20);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000B',	'名古屋',	'0006',	10);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000B',	'名古屋',	'0007',	40);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000C',	'大阪',		'0003',	20);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000C',	'大阪',		'0004',	50);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000C',	'大阪',		'0006',	90);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000C',	'大阪',		'0007',	70);
-- INSERT INTO ShopProduct (id, name, product_id, quantity) VALUES ('000D',	'福岡',		'0001',	100);
-- COMMIT;

--  subquery用
-- select product_id from ShopProduct where id = '000C';
-- inがとる引数がsubqueryでも問題ない！
-- select * from products where id not in (select product_id from ShopProduct where id = '000A');


-- よろしい、ならばExistsだ
-- select name, sales_price
-- from Products as S
-- where exists (select * from ShopProduct as TS where TS.id = '000C' and TS.product_id = S.id);

-- よろしい、ならばnot existだ
select name, sales_price
from products as S
where not exists (
  select * 
  from ShopProduct as TS
  where TS.id = '000A' and TS.product_id = S.id
);