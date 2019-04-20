-- 標準のgroup計算
-- select category, sum(sales_price) as total_price
-- from products 
-- group by category
-- order by total_price;

--ほぼ同量のコードを2回。処理効率も悪い。category別名で無理繰り挿入
-- select '合計' as category, sum(sales_price) as total_price
-- from products 
-- union all
-- select category, sum(sales_price)
-- from products
-- group by category;

-- これを一括計算するためにgrouping演算がある
-- select category, sum(sales_price) as sum_price
-- from products
-- group by rollup(category);

-- 集約基準が複数あったら
-- select category, register_date, sum(sales_price) as sum_price
-- from products
-- group by rollup(category, register_date);

-- 上記だとNullなのか承継業なのかわからなくなる...
-- grouing(列名)で値なのか、小計なのかをわかりやすく表示してくれる
-- select grouping(category) as category,grouping(register_date) as register_date, sum(sales_price) as sum_price
-- from products
-- group by rollup(category, register_date);

-- grouping(列名)で値と小計を判別できたのでcase文でやる！
-- select
--   case when grouping(category) = 1 
--   then 'sum category'
--   else category end as category,
--   case when grouping(register_date) = 1
--   then 'sum date'
--   else cast(register_date as varchar(16)) end as register_date,
--   sum(sales_price) as sum_price
-- from products
-- group by rollup(category, register_date);

-- cube演算
-- select
--   case when grouping(category) = 1 then 'category total' else category end as category,
--   case when grouping(register_date) = 1 then 'date total' else cast(register_date as varchar(16)) end as register_date,
--   sum(sales_price) as sum_sales_price
-- from products
-- group by cube(category, register_date);

select
  case when grouping(category) = 1 then 'category total' else category end as category,
  case when grouping(register_date) = 1 then 'day total' else cast(register_date as varchar(16)) end as register_date,
  sum(sales_price) as total_price
from products
group by grouping sets (category, register_date);