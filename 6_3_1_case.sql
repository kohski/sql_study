-- select name,
--   case
--   when category = 'clothes' then 'A:' || category
--   when category = 'stationary' then 'B:' || category
--   when category = 'kitchen goods' then 'C:' || category
--   else null
--   end as abc_prdocut_category
-- from products;

-- -- これだと列として並んでいない...
-- select category,sum(sales_price) as sum_price
-- from products
-- group by category;

-- select 
-- sum(case when category = 'clothes' then sales_price else 0 end) as sum_clothes,
-- sum(case when category = 'stationary' then sales_price else 0 end) as sum_stationary,
-- sum(case when category = 'kitchen goods' then sales_price else 0 end) as sum_kitchen_goods
-- from products;