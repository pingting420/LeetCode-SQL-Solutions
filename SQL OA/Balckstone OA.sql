select d.ID, d.Name, ifnull(count(e.Name),0) as number
from
Department d 
left join employee e 
on d.ID = e.DEPT_ID
group by d.ID
order by number asc, d.Name asc