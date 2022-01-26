select *
from products
where unit_price > (select unit_price 
					from products);
                    
select *
from employees
where salary >(select avg(salary) from employees );
use store;
select name 
from products
where product_id not in ( select product_id from order_items);

use invoicing;
select name
from clients
where client_id not in ( select client_id from invoices);


select c.name, c.client_id,i.invoice_id
from clients c
left join invoices i using(client_id)
where invoice_id is null;

use store;
select first_name
from customers 
where customer_id =( select customer_id from orders where order_id=3);

select first_name
from customers 
join orders using(customer_id) 
where order_id =3;

select first_name
from customers
where customer_id in ( select customer_id from orders where order_id in ( select order_id
																		from order_items
                                                                        where product_id=3));
				
select distinct customer_id,first_name
from customers
join orders using (customer_id)
join order_items using(order_id)
where product_id =3;
