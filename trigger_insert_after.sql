use sql_invoicing;
DELIMITER $$ 

drop trigger if exists payments_after_insert;
create trigger payments_after_insert 
	after insert on payments
    for each row
begin 
	update invoices 
    set payment_total = payment_total+ new.amount
    where invoice_id = new.invoice_id;
    
    insert into payments_audit
    values(new.client_id,new.date,new.amount,'insert',now());
end $$
DELIMITER ;

insert into payments
values (default,5,3,'2019-01-01',10, 1);

use sql_invoicing;
DELIMITER $$


create trigger payments_after_delete 
	after delete on payments
    for each row
begin  
	update invoices
    set payment_total = payment_total - OLD.amount
    where invoice_id = OLD.invoice_id;
end $$
DELIMITER ;

use sql_invoicing;
delete from payments 
where payment_id = 10;
    