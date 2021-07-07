select d.Name as Department, t.Name as Employee, t.Salary
from 
(select Name, DepartmentId, den_rank()over(partition by DepartmentId order by Salary) as RK
from Employee)t
left join Department d 
on t.Id = d.Id
where t.RK = 1

