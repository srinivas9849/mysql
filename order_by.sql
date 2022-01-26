select client_id,sum(invoice_total) as total_sales
from invoices 
where invoice_date >= '2019-07-01'
group by client_id

order by total_sales desc;

select state,city, sum(invoice_total) as total_sales
from invoices
join clients c using(client_id)
group by state,city;

select date,pm.name as payment_method ,sum(amount) as total_payment
from payments p
join payment_methods pm on p.payment_method = pm.payment_method_id
group by date,payment_method
order by date

