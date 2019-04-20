-- chapter1
-- select id, name, category, max(sales_price) over (order by id) as current_max_price
-- from products;

-- chapter2 
select register_date, name, sales_price, sum(sales_price) over (order by register_date nulls first) as current_sum_price
from products;

