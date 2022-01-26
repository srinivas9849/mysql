-- select count( distinct author_fname) from books;
-- select count(distinct author_fname,author_lname) as "count" from books;

-- select count(*) as "count" from books where title like '%the%' 
-- select count(*) from books group by author_lname;
-- select author_lname,count(*) from books group by author_lname;
-- select max(pg) from (select author_lname,avg(pages) as pg  from books group by author_lname) as b;
/* select i.author_lname,pg from (select author_lname,avg(pages) as pg  from books group by author_lname) as i,
 (select avg(k.pg) as total_avg from (select avg(pages) as pg  from books group by author_lname) as k ) as j 
 where i.pg>j.total_avg; */
 
 -- select author_fname,author_lname,count(*) as "count" from books group by author_fname,author_lname;
 -- select concat( released_year,' -> ',count(*)) as " count" from books group by released_year;
 
 
  -- select author_fname,author_lname, avg(pages) as "average" from books group by author_fname,author_lname;
 
/* select author_lname,author_fname from books group by author_fname,author_lname having avg(pages)>
(select avg(j.maximum) from (select avg(pages) as "maximum" from books group by author_fname,author_lname) as j); */

-- select * from books where pages=(select max(pages) from books)
-- select * from books order by pages desc limit 1;


-- MIN MAX WITH GROUP BY --------

-- select author_fname,author_lname,min(released_year) as "min_year"from books group by author_fname,author_lname;
-- select concat(author_fname," ",author_lname) as "author" ,max(pages) as "longest_book" from books group by author_fname,author_lname order by longest_book desc;

-- SUM ------

-- select sum(pages) " total_pages" from books
-- select author_fname,author_lname, sum(pages) " total_pages" from books group by author_fname,author_lname

/*   select author_fname,author_lname, sum(pages) " total_pages" 
	 from books group by author_fname,author_lname
     having total_pages > (select avg(total) from (select sum(pages) " total" from books group by author_fname,author_lname) as i);

*/


-- EXAMPLES ---------

-- select count(*) as " total_books" from books;
-- select released_year,count(*) "books_released" from books group by released_year order by books_released desc;

-- select sum(stock_quantity) as "total_books" from books;

-- select author_fname,author_lname,avg(released_year) "avg_released_year" from books group by author_fname,author_lname;

-- select concat(author_fname,' ',author_lname) as "full_name",pages from books where pages =(select max(pages) from books);

select released_year as "year" ,count(*) "# books",avg(pages) "avg pages" from books group by released_year order by released_year asc;

