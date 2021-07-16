#to find the first order


select round(sum(order_date=customer_pref_delivery_date)/count(*)*100,2) as immediate_percentage
from
(select order_date, customer_pref_delivery_date,rank()over(partiton by customer_id order by order_date)r
from Delivery)a
where r =1
#use window function to find the first order for a person





where 
(select delivery_id, custmer_id, min(order_date)
from delivery_id
group by customer_id) 
'''
should use (customer_id, order_date) in , should remember if should to get the min order_date, should to use select XX
in 
'''
