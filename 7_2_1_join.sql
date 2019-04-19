-- select SP.id, SP.name, P.id, P.name, P.sales_price
-- from shopproduct as SP inner join Products as P
-- on SP.product_id = P.id
-- where SP.name = '東京'
-- order by SP.id, P.id;

select SP.id, SP.name, P.id, P.name, P.purchase_price
from shopproduct as SP left outer join Products as P
on SP.product_id = P.id;

