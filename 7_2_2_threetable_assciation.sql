-- CREATE TABLE if not exists StockProducts
-- ( id CHAR(4) NOT NULL,
--   product_id CHAR(4) NOT NULL,
--   quantity	INTEGER NOT NULL,
--   PRIMARY KEY (id, product_id));

-- BEGIN TRANSACTION;

-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S001',	'0001',	0);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S001',	'0002',	120);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S001',	'0003',	200);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S001',	'0004',	3);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S001',	'0005',	0);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S001',	'0006',	99);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S001',	'0007',	999);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S001',	'0008',	200);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S002',	'0001',	10);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S002',	'0002',	25);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S002',	'0003',	34);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S002',	'0004',	19);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S002',	'0005',	99);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S002',	'0006',	0);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S002',	'0007',	0);
-- INSERT INTO StockProducts (id, product_id, quantity) VALUES ('S002',	'0008',	18);

-- COMMIT;

select SP.id, SP.name, P.id, P.name, P.sales_price, STP.quantity
from ShopProduct as SP
inner join Products as P on SP.product_id = P.id
inner join StockProducts as STP on SP.product_id = STP.product_id
where STP.id = 'S001';


