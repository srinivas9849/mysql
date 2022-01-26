use sql_invoicing;

DELIMITER $$
create procedure get_invoices_with_balance()
Begin 
	select *,invoice_total-payment_total as balance from sql_invoicing.invoices where invoice_total-payment_total >0;
End $$
DELIMITER ;
	
-- DROP PROCEDURE IF EXISTS get_clients;