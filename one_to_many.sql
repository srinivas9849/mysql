-- select * from orders where customer_id=(SELECT id FROM customers where last_name='George');
-- select * from customers,orders;
 -- INNER JOIN----
 
 -- select * from customers c,orders o where c.id=o.customer_id; 
    
/* 
select * from customers c 
join orders o on c.id=o.customer_id; 
*/

/*
select * from customers c 
left join orders o on c.id=o.customer_id;

*/

/*
select c.id,sum(amount) as " spend",count(*) as "total_products" from customers c 
join orders o on c.id=o.customer_id
group by c.id
order by spend;

*/
/*
select * from customers c 
join orders o on c.id=o.customer_id
group by o.customer_id;

*/

/*
select concat(c.first_name,'  ',
c.last_name) as "full name",
if(o.customer_id is null ,'not ordered',count(*)) as "data"
from customers c
left join orders o on c.id=o.customer_id
group by c.id;

*/
-- select email,if(id is null ,0,id) from customers;















 