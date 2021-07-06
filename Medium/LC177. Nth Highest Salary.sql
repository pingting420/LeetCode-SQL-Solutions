Begin set n=n-1;
return
select distinct salary from employee
order by salary desc
limit N,1

'''
for example, if want to find the second salary, limit 1, 1
so we should write 
limit N,1
'''