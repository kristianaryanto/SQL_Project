select ship_mode,count (ship_mode) as total
from mytable 
group by ship_mode 
order by total desc
