use invoicing;
select state,city,sum(invoice_total) as total_sales
from invoices i
join clients c using(client_id)
group by state,city with rollup;

select pm.name as p_method,sum(amount)
from payments p
join payment_methods pm on pm.payment_method_id = p.payment_method
group by pm.name with rollup 

