select e.name, e.bouns
from employee e left join bonus b 
on e.empid = b.empid
where bonus is null or bouns < 1000