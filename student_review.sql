drop view subtable ;
create view subtable as
select substring_index(likes,',',1)  as l
			from review	

union all
select substring_index(substring_index(likes,',',2),',',-1) as l
from review	    
union all 
select substring_index(substring_index(likes,',',3),',',-1) as l
from review	;    

select l
from subtable 
group by l
order by count(l) desc
limit 1;
-- SELECT customer.customer_num,
	-- (SELECT SUM(ship_charge) 
	 	-- FROM orders
	 	-- WHERE customer.customer_num = orders.customer_num) 
			-- AS total_ship_chg
	-- FROM customer