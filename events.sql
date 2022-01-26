use sql_invoicing;

DELIMITER $$

create event yearly_delete_stale_audit_rows 
on schedule 
	-- at 'date'--
    every 1 year starts '2019-01-01' ends '2029-01-01' 
do begin 
	delete from payments_audit
    where action_date < now()- interval 1 year;
end
 
$$
DELIMITER ;