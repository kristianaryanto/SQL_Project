select * 
from customer d1
join customer d2 on d1.customer_id = d2.customer_id
    and d1.city <> d2.city and d1.region <> d2.region 
    and d1.customer_name <> d2.customer_name
