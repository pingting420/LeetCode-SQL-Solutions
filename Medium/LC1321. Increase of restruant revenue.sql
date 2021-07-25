select t.visited_on,
sum(c.amount) amount,
round(sum(c.amount)/7,2) average_amount
from (
    select distinct visited_on from Customer
    where visited_on >= date_add((select min(visited_on) from Customer),interval 6 day)
) t 
left join customer c 
on datediff(t.visited_on, c.visited_on) between 0 and 6
group by t.visited_on