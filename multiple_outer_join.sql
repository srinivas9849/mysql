select c.customer_id,c.first_name,o.order_id,o.order_date,sh.name as shipper
from customers c
left join orders o on c.customer_id=o.customer_id
left join shippers sh on sh.shipper_id=o.shipper_id
order by c.customer_id;

select o.order_date , o.order_id,c.first_name,s.name as shiper ,os.name as status
from orders o
left join customers c on c.customer_id=o.customer_id
left join shippers s on o.shipper_id = s.shipper_id
join order_statuses os on os.order_status_id = o.status;

use sql_hr;
select e.first_name,e.employee_id,o.employee_id as manager
from employees e
left join employees o on e.reports_to = o.employee_id;