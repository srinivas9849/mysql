use store; 
start transaction;

insert into orders (customer_id,order_date,status)
values(1,'2019-01-01',1);

insert into order_items
values (LAST_INSERT_ID(), 1,1,1);
commit;
