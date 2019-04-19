-- drop view if exists ViewPractice5_1;
-- create view ViewPractice5_1 (name, sales_price, register_date) as 
-- select name, sales_price, register_date 
-- from products
-- where sales_price >= 1000 and register_date = '2009-09-20';

select id, name, category, sales_price, (
  select avg(sales_price) from products
) 
from products;