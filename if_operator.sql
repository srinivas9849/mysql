use store;
select os.product_id,p.name,count(os.product_id),if(count(os.product_id)=1,'once','many_times')
from order_items os
join products p on os.product_id=p.product_id
group by os.product_id