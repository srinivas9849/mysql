insert into store.orders (customer_id,order_date,status)
values(1,'2019-01-02',1);

insert into order_items
values (LAST_INSERT_ID(),1,1,20.95),
		(LAST_INSERT_ID(),2,1,3.95);
