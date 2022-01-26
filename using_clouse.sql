select o.order_id,c.first_name,sh.name as shipper
from customers c
join orders o using(customer_id)

left join shippers sh using(shipper_id);

select *
from order_items oi
join order_item_notes 
	using(order_id,product_id);

use invoicing;

select p.date,c.name,p.amount,pm.name
from payments p 
join clients c using(client_id)
join payment_methods pm on pm.payment_method_id=p.payment_method;