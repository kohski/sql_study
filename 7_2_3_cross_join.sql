select SP.id, SP.name, SP.product_id, P.name
from ShopProduct as SP cross join Products as P;