/*
select title,avg(rating) as "avg_rating"
from series s
join reviews r on s.series_id=r.series_id
group by title
order by 2 asc ; 
-- join reviewers rs on rs.reviewer_id=r.reviewer_id

*/

/*
select first_name,last_name,rating
from reviewers rs
join reviews r on rs.reviewer_id=r.reviewer_id; 

*/
/*

select title as "unviewed"
from series s
where series_id not in (select series_id from reviews where s.series_id=series_id);

*/


select first_name,last_name,rating ,ifnull(count(rating),0) as " count" -- ,count(*),max(),min(),avg(),status
from reviews r
right join reviewers rs on rs.reviewer_id=r.reviewer_id
group by first_name,last_name;

-- join series s on s.series_id =r.series_id;



