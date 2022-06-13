select t1.row_id, t2.customer_name,
    row_number () over (partition by customer_name order by row_id) as rn
from mytable as t1 
    left join
    (select distinct customer_name,customer_id from customer)as t2
    on t1.customer_id = t2.customer_id
order by rn desc
   
