-- select concat(author_fname,' ',author_lname ) as name from books;
-- select concat('hello',' ','world') as 'name';
     -- concat with seperator
-- select concat_ws('-','123','456') as adharcard;

-- sub string -----
-- select substring('hello world',5) as name; -- prints from index 5 to end
-- select substring('hello world',1,5) as name; -- it prints from 1 to 5 indexed characters
 -- select substring('hello world',-5) -- giving negative index prints last 5 characters
 -- select concat(substring(title,1,10),'...') as 'short title' from books;
 
 -- STRING REPLACE it is case sensitive
 
 -- select replace('hello world','hell','@$%') as 'replace';
 
 -- select title , if(true,book_id,null) as 'count' from books;
 
-- select replace('hello world','l','7') as 'replace';  -- replace al; l's with 7

-- select replace(title,'e','3') from books;
 
 -- REVERSE OF A STRING
 
 -- select reverse('hello') AS 'REVERSEED';
 -- select reverse(author_fname) as 'name_reverse' from books;
 
 -- CHAR LENGTH 
 -- select char_length('hello world'); 
 -- select author_fname, char_length(author_fname) from books;
 
 -- select author_fname , char_length(author_fname) as 'len' from books where  char_length(author_fname)=(select max(char_length(author_fname)) as maximum from books);
 -- select concat(author_fname,' is ',char_length(author_fname),' characters long') as 'len' from books ;
 
 -- UPPER  AND LOWER CASE 
 
 -- select upper('hello') as 'upper case';
 -- select lower('HELLO') as 'LOWER';
 -- select concat('my favorate book is ',upper(title)) as 'title' from books;
 
 -- EXAMPLES
 
 -- select upper(reverse('why does my cat looks at me with such hatred')) 'as REV_UPPER';
 -- select replace(title,' ','->') as 'title' from books;
 
 -- select author_lname as froword ,reverse(author_lname) as 'backword' from books;
 
-- select upper(concat(author_fname,' ',author_lname)) as 'full name in caps' from books;

-- select concat(title,' was released in ',released_year) as 'blurb' from books

-- select title , char_length(title) as 'character lenth' from books;
select 
-- concat(substring(title,1,10),'...') as 'short title' ,
-- concat(author_lname,',',author_fname) as 'author' ,
-- concat(stock_quantity,' in stock') as 'quantity'
-- from books;
 
 
 
 
 


