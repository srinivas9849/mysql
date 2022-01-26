--  * from books where author_fname like 'DA%'; -- starts with da
-- select * from books where title like 'the'; -- ecactly like the
-- select * from books where title like '%the%'; 
-- select * from books where stock_quantity like '___'; -- exactly 3 characters
-- select * from books where stock_quantity like '__7'; -- exactly 3 characters with last 7
--  select * from books where stock_quantity like '____'; -- exactly 4 characters
-- select * from books where title like '%\%%'; -- matches % in title

-- select title from books where title like '%stories%';
-- select title,pages from books order by pages desc limit 1;
-- select concat_ws('-',title,released_year) as 'summary' from books order by released_year desc limit 3;
-- select title,author_lname from books where author_lname like '% %';
-- select title,stock_quantity from books order by stock_quantity limit 3 

-- select title,author_lname from books order by author_lname,title;
select upper(concat('MY FAVORATE AUTHOR IS ',author_fname,' ',author_lname,'!')) as 'yell' from books order by author_lname





