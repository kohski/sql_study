select
  COALESCE(SP.id,'不明') as shop_id,
  COALESCE(SP.name,'不明') as shop_name,
  P.id,
  P.name,
  P.sales_price
from shopproduct as SP right outer join products as P
on SP.product_id = P.id
order by SP.id,P.id;