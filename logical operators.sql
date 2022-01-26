-- select * from books where released_year !=2017;
-- use my_database;
-- select * from books where stock_quantity !=0 and price <19.99;

-- NOT LIKE
-- select title from books where title not like '%the%';

-- select title from books where title not like 'W%'; -- case insensitive

-- select * from books where released_year >2000;

-- select 9>10;

-- select -15>15;
-- select 1>1;

-- select 'a' >'b';
-- select 'A' >'a';

-- select * from books where author_fname ='dave' and author_lname ='eggers' and released_year >2010;

-- select 9>10 and 9=10;

-- BETWEEN IT INCLUDES BOTH THE ENDS ------

-- select title,released_year from books where released_year >=2004 and released_year <=2015;

-- select title,released_year from books where released_year between 2004 and 2015;
-- select title,released_year from books where released_year not between 2004 and 2015;

-- select cast(curtime() as date)
/* use sakila; 
select * from actor where last_update between cast('2006-1-1' as date) and cast('2016-5-5' as date);

*/

-- select * from books where released_year >1980;
-- select * from books where author_lname in ('Eggers','Chabon');

-- select * from books where author_lname ='Lahiri' and released_year >2000;
-- select * from books where pages between 100 and 200;

-- select * from books where author_lname like 'c%' or's%';

-- select title,book_id ,if(title like '%stories%',"short stories","novels") as "type" from books;
/* 
select title,book_id ,
      case 
          when released_year >2000 then 'Modern Lit'
          else '20th Centuty Lit'
	 end as GENRE
from books;

*/

/* select title,stock_quantity, 
       case
           when stock_quantity <=50 then '*'
           when stock_quantity between 51 and 100 then '**'
           else '***'
		end as "STOCK"
from books;

*/

select author_lname, concat(count(*),' books') as "COUNT"
 from books group by author_lname order by author_lname;








