select p.project_id, employee_id
from
(
select project_id, employee_id, dense_rank()over(partition by p.project_id order by e.experience desc) as RK_
from Employee e left join Project p 
on e.employee_id = p.employee_id) k 
where k.RK_ = 1
