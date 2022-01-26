use invoicing;
update invoices 
set payment_total =10 ,payment_date = '2019-03-01'
where invoice_id =1;

update invoices
set payment_total = invoice_total * 0.5,payment_date = due_date
where client_id =3;

use invoicing;
update invoices
set payment_total = invoice_total * 0.5 ,payment_date = due_date
where client_id =( select client_id 
                   from invoicing.clients
                   where name = 'Myworks');
                   
use store;
update orders set comments = 'gold customer'
where customer_id in (select customer_id
					 from customers 
                     where points >3000);

