-- select name, purchase_price
-- from products
-- where purchase_price not in (500,2800,5000);

select name, purchase_price
from products
where purchase_price not in (500,2800,5000, null);
