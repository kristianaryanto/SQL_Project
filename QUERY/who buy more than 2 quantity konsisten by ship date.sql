select customer_id ,quantity, ship_date
FROM (
    select customer_id ,quantity, ship_date, 
    case when quantity > 2
            and lead (quantity) over(order by ship_date ) >2
            and lead (quantity,2) over (order by ship_date ) >2
          then 'yes'
         when quantity > 2
            and lag (quantity) over (order by ship_date) > 2
            and lead (quantity) over (order by ship_date) > 2
          then 'yes'
         when quantity > 2
            and lag (quantity) over (order by ship_date) > 2
            and lag (quantity,2) over (order by ship_date) > 2
          then 'yes'
          else null
    end flag
    from mytable) as x
where x.flag = 'yes'
