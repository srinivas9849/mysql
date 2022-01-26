 -- create table people (name varchar(50), birth_date date,birth_time time,birth_dt datetime)
 -- insert into people values('padma','9183-11-11','10:7:35','9183-11-11 10:7:35');
 -- select * from people;
 
-- select now();
-- select curdate(); 
-- select curtime(); 
-- select year(curdate());
-- select month(now());
-- select day(now());
-- select hour(now());
-- select monthname(now());
-- select minute(now());
-- select dayname(now());
 
-- select dayname('2002-04-23'); 
-- select extract(month from now());

-- select extract(year from invoice_date)
-- from invoices;

-- select monthname(invoice_date)
-- from invoices;
-- select hour(invoice_date)
-- from invoices;

-- use store;
-- select *
-- from orders
-- where extract(year from order_date) = year(curdate());

-- select date_add(now(), interval 1 hour);

-- use invoicing;
-- select date_add(invoice_date, interval 1 year)
-- from invoices;
-- select date_add(now(),interval -1 year);
-- select date_add(now(),interval 1 week);
-- select date_add(curdate(),interval 1 hour);

-- select datediff(now(),'1999-1-1 23:12:12') from  people;




/*
use invoicing;
 from invoices;  */

-- select name,birth_date from people;

/* select name,day(birth_date)  as "birth_day",dayname(birth_date),dayofweek(birth_date) ,
dayofyear(birth_date),month(birth_date)
from people; */

-- select date_format(now(),'%W-%M-%Y') as "date";

-- select date_format(birth_dt,'%W %M %Y') from people;
-- select date_format(birth_date,' was born on %W') from people;
-- select date_format(now(),'%d-%m-%Y at %h:%m');




 

