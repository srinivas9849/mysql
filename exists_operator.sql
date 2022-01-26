select *
from clients
where client_id in (select client_id from invoices);
use invoicing;
select *
from clients c
where exists (select client_id from invoices where client_id = c.client_id);

use store;
select p.product_id,p.name
from products p
left join order_items ot using(product_id)
where order_id is null;

select name
from products 
where product_id not in (select product_id from order_items);

select name
from products p 
where not exists (select product_id from order_items
					where product_id=p.product_id)




