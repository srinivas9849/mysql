
-- create table students( id int auto_increment not null, first_name varchar(50) not null,primary key(id));
-- drop table papers;
-- create table papers(id int,title varchar(255) not null, grade int );

/*
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

*/

-- select * from papers;

/*
select s.first_name,p.title,p.grade
from students s
join papers p on s.id=p.id
order by p.grade desc;


select s.first_name,ifnull(p.title,'missing') "title",ifnull( p.grade,0) as "grade"
from students s
left join papers p on s.id=p.id;

*/


select s.first_name,ifnull(avg(grade),0) as "average",if((>50,'passfail', "fail")
from students s
left join papers p on s.id=p.id
group by s.first_name
order by average desc;






