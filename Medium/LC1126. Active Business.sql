select business_id
from event e join
(
select event_type, avg(occurance) as avg_occurance
from Events
group by event_type)t
on e.event_type = t.event_type
and e.occurance > t.avg_occurance
group by e.business_id
having count(*)>1
