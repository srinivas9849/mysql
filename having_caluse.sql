select client_id,
	sum(invoice_total) as total_sales,
    count(*) as num_of_invoices
from invoices 
group by client_id
having total_sales >500 and num_of_invoices >5;

use store;
select customer_id,sum(quantity * unit_price) as spent
from customers c
join orders o using(customer_id) 

join order_items oi using(order_id)
where state='VA'
group by customer_id
having spent >100

