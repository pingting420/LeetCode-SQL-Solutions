select product_id,new_price as price
from products #how to choose the last change price
where(product_id, change_date) in 
(select product_id, max(change_date) as max_change
from products
where change_date<='2019-08-16'
group by product_id
)
union 
(select product_id, 10 as price from
products
group by product_id
where min(change_date)>'2019-08-16')