'''
using the datediff to calculate the the data
'''
select id 
from weather a join weather b 
on b.temperature > a.temperature
and datediff(a.Recordate,b.RecordDate) = 1