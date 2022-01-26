use invoicing;
select invoice_id ,invoice_total,(select avg(invoice_total)  from invoices) as invoice_average,(invoice_total - (select avg(invoice_total)  from invoices)) as diff

from invoices;

use invoicing;
select invoice_id ,invoice_total,(select avg(invoice_total)  from invoices) as invoice_average,(invoice_total - (select invoice_average)) as diff

from invoices;

use sql_invoicing;
select client_id as c_id,name,(select 
						sum(invoice_total)
                        from invoices
                        where client_id = (select(c_id))
                        ) as a,
                        (select 
						avg(invoice_total)
                        from invoices) as average,
                        ((select a)-(select average)) as diff
                        
from clients

