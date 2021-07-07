#This is wrong
select distinct Num as ConsecutiveNums
from 
(select Num, Id - dense_rank()over(partition by Num) as gup
from Logs
group by gup)
where count(gup) >= 3

#Above is correct
select distinct Num as ConsecutiveNums
from
(select Num, abs(Id+1-(rank()over(partition by Num order by Id))) as temp
from Logs) as t
group by Num, temp
having count(temp) >= 3
