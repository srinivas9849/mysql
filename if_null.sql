use store;
select order_id,ifnull(shipper_id,'not have value') as shipper
from orders;

use store;
select order_id,coalesce(shipper_id,comments,'not have value') as shipper
from orders;

select concat(first_name,' ',last_name) as customer,ifnull(phone,'unknown') as phone
from customers;