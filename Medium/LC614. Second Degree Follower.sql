select followee as follower, count(distinct follower) as num
from
follower
where
followee in
(select followee from
follow 
where followee in (select follower from follow))
group by followee



select f1.follower as follower, count(distinct(f2.follower))as num
from 
follow f1 join follow f2
on f1.follower = f2. followee
group by f1.follower