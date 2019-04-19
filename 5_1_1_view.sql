/* こっちはviewの定義
create view ProductSum (category, cnt_products) as 
select category, count(*) from products group by category;
*/



-- create view ProductJim (id, name, category, sales_price, purchase_parice, register_date) as select * from products where category = 'stationary';
-- insert into ProductJim values ('0009','stamp','stationary', 95,10, '2009-11-30');
-- drop view productsum;

/* こっちはサブクエリ
select category, cnt_product from (
  select category, count(*) as cnt_product from products group by category 
) as ProductSum;
*/

-- select category, cnt_product 
-- from (
--   select * from (
--     select category, count(*) as cnt_product from products group by category
--   ) as ProductSum
--   where cnt_product = 4
-- ) as ProductSum2;

-- select avg(sales_price) from products;

-- 上段は　演算はwhere内でできないという制約によりエラー
-- select id, name, sales_price from products where sales_price > avg(sales_price);
-- こちらはスカラクエリなのでOK!!というか、スカラ値（単一の値が書ける場所ならどこでもOK!）
-- select id, name, sales_price from products where sales_price > (select avg(sales_price) from products);
-- 帳票画面などではいけてないけどこういう書き方も多い
-- select id, name, sales_price, (select avg(sales_price) from products) as avg_price from products;

select category, round(avg(sales_price)) from products group by category;
select category, name, sales_price
from products as S1
where sales_price > (
  select avg(sales_price)
  from products as S2
  where S1.category = S2.category
  group by category
);




