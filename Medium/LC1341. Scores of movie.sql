(select u.name as results
from Movie_Rating m left join Users u 
on m.user_id = u.user_id
group by m.user_id
order by count(*) desc, u.name asc
limit 1)
union all
(select v.title as results
from Movie_Rating m left join Movies v 
on m.movie_id = v.movie_id
where m.created_at like"2020-02%" #here is important
group by m.movie_id
order by avg(m.rating) desc, v.title asc
limit 1)
