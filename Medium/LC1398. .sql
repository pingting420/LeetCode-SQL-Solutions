select o.customer_id, customer_name
from Customers c, orders o
where o.customer_id = c.customer_id
group by o.customer_id
having sum(product_name = 'A')>0 and sum(product_name = 'B')>0 and sum(product_name = 'C') = 0