select Name as Customers
from Customers
where Id not in 
(select Id from Orders)