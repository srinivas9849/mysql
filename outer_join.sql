select 
c.customer_id,
c.first_name ,
o.order_id
from customers c
right join orders o
	on c.customer_id=o.customer_id
order by c.customer_id;

use store;
select p.product_id,p.name,oi.quantity
from order_items oi
right join products p on oi.product_id = p.product_id; 