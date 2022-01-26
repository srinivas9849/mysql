select order_id,
case 
	when year(order_date) = year (now()) then 'actv'
    when year(order_date) < year (now()) then 'not_actv'
    else 'future'
end as cat
from orders
	