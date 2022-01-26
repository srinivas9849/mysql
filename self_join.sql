use sql_hr;
select *
from employees e
join employees m on m.employee_id=e.reports_to;

select e.employee_id,e.first_name,m.first_name as manager
from employees e
join employees m on m.employee_id=e.reports_to;
