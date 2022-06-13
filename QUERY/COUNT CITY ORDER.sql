select t2.city, count(t1.order_id) as order_by_city
from mytable as t1
    left join
        (select distinct customer_id,city from customer) as t2
    on t1.customer_id = t2.customer_id
group by city