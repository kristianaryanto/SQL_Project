select x.city, avg (x.sales) 
from(
    select t1.*, t2.*
    from mytable as t1
         join (select * from customer) as t2
         on t1.customer_id = t2.customer_id) as x
group by x.city
            
