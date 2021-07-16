#function of Mod

select student,
(case when mod(id,2) != 0 and id <> counts then id+1
when mod(id,2) = 0 and id = counts then id
else id -1 end ) as id
from seat, (select count(*) as counts from seat) as seatCnts
order by id