select now();
select curdate(); 
select curtime(); 
select year(now());
select month(now());
select day(now());
select hour(now());
select monthname(now());
select dayname('2002-04-23');
select extract(month from now());

select extract(year from invoice_date)
from invoices;

select monthname(invoice_date)
from invoices;
select hour(invoice_date)
from invoices;

use store;
select *
from orders
where extract(year from order_date) = year(curdate());

select date_add(now(), interval 1 hour);

use invoicing;
select date_add(invoice_date, interval 1 year)
from invoices;


use invoicing;
select datediff(now(),invoice_date)/365 as diff
from invoices;



