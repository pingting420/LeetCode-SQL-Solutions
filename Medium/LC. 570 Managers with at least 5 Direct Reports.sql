select e2.Name
from Employee e1 join Employee e2
on e1.ManagerId = e2.ManagerId
group by e1.managerId
having count(e2.Id) >= 5
