'''The points:
order the number as order of asc and desc, the count should >= order / 2)
'''

select avg(number) as median
from 
(select Number, frequency,
sum(frequency) over (order by number asc) as total,
sum(frequency) over (order by number desc) as total1
from Numbers
order by number asc) as a 
where total >= (select sum(frequency) from Numbers)/2
and total1 >=(select sum(frequency) from Numbers) /2