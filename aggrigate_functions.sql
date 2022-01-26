use invoicing;
select max(invoice_total) as higher ,
       min(invoice_total) as lowest ,
       avg(invoice_total) as avgof ,
       sum(invoice_total) as sumof ,
       sum(invoice_total * 1.1) as sumof ,
       
       count(invoice_total) as countof ,
       count( distinct client_id) as clint_total,
       count(payment_date) as countof_payment,
       count(*) as total_records
       
from invoices 
where invoice_date > '2019-07-01';
use invoicing;
select  'first half of 2019' as date_range,sum(invoice_total) as total_sales,sum(payment_total) as total_payments ,sum(invoice_total - payment_total)

from invoices
where payment_date <'2019-06-01'
union

select  'second half of 2019' as date_range,sum(invoice_total) as total_sales,sum(payment_total) as total_payments,sum(invoice_total -payment_total)

from invoices
where payment_date >='2019-06-01'
union

select  'total' as date_range,sum(invoice_total) as total_sales,sum(payment_total) as total_payments,sum(invoice_total -payment_total)

from invoices;





