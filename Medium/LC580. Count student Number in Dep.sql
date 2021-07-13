select dept_name, ifnull(t.student_number,0) as student_number
from department d left join 
(select dept_id, count(student_name) as student_number
from student 
gourp by dept_id) t
on d.dept_id = t.dept_id
order by t.student_number desc, dept_name


'''
select d.dept_name dept_name, ifnull(count(student_name),0) student_number
from department d
left join student s
on d.dept_id = s.dept_id
group by d.dept_id 
order by student_number desc, dept_name
'''