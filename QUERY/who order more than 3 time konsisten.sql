select distinct customer_id, ship_date
from (
    select row_id, customer_id, ship_date, 
    case when customer_id = lead(customer_id) over(order by ship_date)
              and customer_id = lead(customer_id,2) over(order by ship_date)
         then customer_id
         else null
    end as repeated_user
    from mytable) as x
 where x.repeated_user is not null
