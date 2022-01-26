use invoicing;
select invoice_id,invoice_total
from invoices
where invoice_total > (select max(invoice_total)
						from invoices
                        where client_id=3);

select name,client_id from clients where client_id = any (

select client_id
from invoices 
group by client_id
having count(client_id)  >=2)
