select t2.city, avg(t1.sales) as most_hight_sales_by_city
from mytable as t1
    left join
        (select distinct customer_id,city from customer) as t2
    on t1.customer_id = t2.customer_id
group by city, sales
order by sales DESC