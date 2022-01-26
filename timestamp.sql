-- create table comments(content varchar(100) ,created_at timestamp default now());

-- insert into comments2 (comment) values('I found this offencive');
select * from comments2;
-- create table comments2( comment varchar(100) , created_at timestamp default now() on update current_timestamp());
-- update comments2 set comment='hello' where comment='I found this offencive';