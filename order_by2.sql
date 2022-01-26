-- select distinct author_lname from books; 
-- select * from books order by released_year desc;

select title, author_fname,author_lname 
from books
order by 2; -- slects author_fname for ordering 

-- ORDER BY TWO DIFFERENT COLUMNS
-- select author_fname,author_lname from books order by 1,2;

-- Using LIMIT
-- select * from books order by released_year desc limit 5;

-- select * from books order by released_year desc limit 5,5; -- index start from 0 in limit function
-- select * from books order by released_year desc limit 5,100000000000; -- index start from 0 in limit function
-- select released_year from books limit 5,5;