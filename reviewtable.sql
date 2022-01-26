
create database my_database;
use my_database;
create table review (
	id int not null unique,
    name varchar(20) not null,
    likes varchar(50)
);

insert into review values (1,'vaasu','java,sql,python');
insert into review values (2,'abc','java,c');
insert into review values (3,'def','python,c++');
insert into review values (5,'ghi','php');
insert into review values (6,'jkl','php');
insert into review values (7,'jkl','python');
insert into review values (8,'jkl','python');






-- INSERT INTO customer_details (customer_name,customer_address)
-- SELECT * FROM (SELECT 'Veronica' AS customer_name, '552 NewYork USA' AS customer_address) AS temp
-- WHERE NOT EXISTS (
 --    SELECT customer_name FROM customer_details WHERE customer_name = 'Veronica'
-- ) LIMIT 1; 



