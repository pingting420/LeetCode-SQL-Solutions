
#This is incorrect, because min only can choose the min in specific column
select product_id, min(year) as first_year, quantiy, price
from Sales
group by product_id



select product_id, year as first_year, quantity,price
from Sales
where (product_id,year) in
(select product_id,min(year) from Sales 
group by product_id)