use store;
select c.customer_id,c.first_name,o.order_date,o.order_id,os.name
from orders o
join customers c on o.customer_id = c.customer_id
join order_statuses os 
	on os.order_status_id=o.status;


select p.date ,p.invoice_id,p.amount,p.payment_id,c.name,pm.name
from invoicing.payments p
join invoicing.clients c on p.client_id = c.client_id
join invoicing.payment_methods pm on pm.payment_method_id = p.payment_method;