select login_date, count(user_id) as user_count
from
(select min(activity_date) as login_date, user_id
from Traffic
where activity = 'login'
group by user_id
having datediff('2019-06-30',login_date) <=90
)as temp
group login_date

#first step---to choose the user's first login date in the condition
#group by the login_date, and count the number
