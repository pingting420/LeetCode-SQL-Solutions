Select e1.name
from employee e1 join employee e2
on e2.name = e1.managerID
and e1.salary > e2.salary