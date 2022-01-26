select o.*,'gold' as type
from orders o
join customers c using(customer_id)
where c.points >3000
union

select o.*,'silver' as type
from orders o
join customers c using(customer_id)
where c.points between 2000 and 3000

union

select o.*,'silver' as type
from orders o
join customers c using(customer_id)
where c.points < 2000;
use store;
select o.*,'gold' as type
from orders o
where customer_id in (select customer_id 
					from customers 
                    where points >3000);
