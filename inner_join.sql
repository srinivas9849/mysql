select *
from orders
join customers where orders.customer_id = customers.customer_id ;

select order_id,first_name,last_name,orders.customer_id
from orders
join customers where orders.customer_id = customers.customer_id;

select 
order_id,orders.customer_id,customers.city
from orders
join customers where orders.customer_id = customers.customer_id and order_id =4;

select name 
from order_items 
join products where order_id=1 and order_items.product_id = products.product_id;


