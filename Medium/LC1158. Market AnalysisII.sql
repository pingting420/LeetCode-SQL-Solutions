select user_id as buyer_id, join_date, count(o.item_id) as orders_in_2019
from
Users u left join Orders o
on u.user_id = o.buyer_id 
where o.order_date>'2019-01-01' and o.order_date<'2019-12-31'
gourp by buyer_id