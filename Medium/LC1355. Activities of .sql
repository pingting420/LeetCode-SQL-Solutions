select activity
from friends
group by activity
having count(*) not in
((select count(activity)
from friends
group by activity
order by count(activity) desc
limit 1),
(select count(activity)
from friends
group by activity
order by count(activity) asc
limit 1))