use store;
insert into orders_archived
select * from store.orders where order_date <'2019-01-01';

use invoicing;
create table invoices_archived as
select i.*,c.name
from invoices i
join clients c using(client_id)
where i.payment_date is not null;
