SELECT 
(select distinct Salary 
from Salary
order by Salary
limit 1,1) as SecondHighestSalary

'''
Pay attention to if there is the repeat salsay
'''