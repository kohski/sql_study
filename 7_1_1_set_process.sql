-- CREATE TABLE products2
-- (id     CHAR(4)      NOT NULL,
--  name    VARCHAR(100) NOT NULL,
--  category VARCHAR(32)  NOT NULL,
--  sales_price  INTEGER      ,
--  purchase_price  INTEGER      ,
--  register_date      DATE         ,
--  PRIMARY KEY (id));

--  BEGIN TRANSACTION;

-- INSERT INTO products2 VALUES ('0001', 'Tshirt' ,'clothes', 1000, 500, '2009-09-20');
-- INSERT INTO products2 VALUES ('0002', 'Punch', 'kitchen goods', 500, 320, '2009-09-11');
-- INSERT INTO products2 VALUES ('0003', 'cutter shirt', 'clothes', 4000, 2800, NULL);
-- INSERT INTO products2 VALUES ('0009', 'glove', 'clothes', 800, 500, NULL);
-- INSERT INTO products2 VALUES ('0010', 'kettke', 'kitchen goods', 2000, 1700, '2009-09-20');

-- COMMIT;

-- 和集合（重複行は削除される）
-- select id, name
-- from products
-- union
-- select id, name
-- from products2
-- order by id;

-- 和集合（Allオプション）
-- select id, name
-- from products
-- union all
-- select id, name
-- from products2;

-- 積集合
-- select id, name
-- from products
-- intersect
-- select id, name
-- from products2;

-- 差演算(productsベース)
-- select id,name
-- from products
-- except
-- select id,name
-- from products2;

-- 差演算(productsベース)
select id,name
from products2
except
select id,name
from products;


