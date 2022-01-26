select *
from store.order_items oi
join store.order_item_notes oin 
	on oi.product_id = oin.product_id and oi.order_id = oin.order_Id;