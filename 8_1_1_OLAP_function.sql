-- select name, category, sales_price, 
-- rank () over (
--   -- partition by category
--   order by sales_price
-- ) as ranking,
-- dense_rank () over (
--   order by sales_price
-- ) as dense_ranking,
-- row_number () over (
--   order by sales_price
-- ) as row_num
-- from products;

-- ウィンドウ関数の現在までの合計算出
-- select id, name, sales_price, sum(sales_price) over (order by id) as current_sum from products;

-- 2行までのrowsまで平均の計算に入れるという意味
-- select id, name, sales_price, round(avg(sales_price) over (
--   order by id
--   rows 2 preceding
-- )) as moving_avg
-- from products;

-- over句内のorder by は計算順序の参照なので並び順指定は、top lineでoreder by句をベット設定する
select id, name, sales_price, round(avg(sales_price) over (
  order by id
  rows between 1 preceding and 2 following
)) as moving_avg
from products;