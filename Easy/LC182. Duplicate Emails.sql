select Email
from Person
group by Email
where count(Id)>1