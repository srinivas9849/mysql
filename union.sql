select order_id,order_date,'active' as status
from store.orders
where order_date >='2019-01-01'

union
select order_id,order_date,'inactive' as status
from store.orders
where order_date <='2019-01-01';


use store;
select customer_id,first_name,points,'gold' as type 
from customers
where points >=3000
union
select customer_id,first_name,points,'silver' as type
from customers
where points between 2000 and 3000
union
select customer_id,first_name,points,'bronze' as type 
from customers
where points <2000
order by first_name;





