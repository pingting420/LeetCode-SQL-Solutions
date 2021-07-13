select sum(TIV_2016) TIV_2016
from 
insurance
where 
TIV_2015 in (select TIV_2015 from insurance group by TIV_2015 having count(*)>1)
and 
concat(lat,lon) in (select concat(lat,lon) from insurance group by concat(lat,lon)
having count(*) = 1)