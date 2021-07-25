select page_id
from
Likes
where user1_id in
(select user2_id as user
from Friendship
where uuer1_id = 1
union all
select user1_id as user
from Friendship
where user2_id = 1) a 
and page_id !=(select page_id from likes where user_id = 1)
