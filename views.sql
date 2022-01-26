use store;

create view customer_orders as
select c.first_name,p.name
from customers c
join orders o using(customer_id)
join order_items os using(order_id)
join products p using(product_id);
use store;

create view customer_order_count as

select first_name, 
count(first_name) as cou
from customer_orders
group by first_name;

select if(cou = (select max(cou) from customer_order_count),'more','less') as status,first_name
from customer_order_count;


use sql_invoicing;
create or replace view invoices_with_balance as
select invoice_id,number,client_id ,invoice_total,payment_total,invoice_total- payment_total as balance,
invoice_date,due_date,payment_date
from invoice
where (invoice_total - payment_total);




