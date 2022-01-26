-- in first session

use store;
set transaction isolation level read uncommitted;
select points
from customers 
where customer_id =1;

-- in second session
use store;
start transaction; 
update customers 
set points = 2000
where customer_id =1;

commit;