select student_id, course_id, grade
from
(select *,
dense_rank()over(partition by student_id order by grade desc, course_id) rk 
from enrollments) t
where rk=1