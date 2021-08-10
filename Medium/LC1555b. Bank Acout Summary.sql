select a.user_id, user_name, sum(a.credit) credit,
(case when sum(a.credit)< 0 then 'Yes' else 'No' end) credit_limit_breached
from
    (
    select paid_by user_id, -amount credit from transactions
    union all
    select paid_to user_id, amount from transactions
    union all
    select user_id, credit from users
    ) a
join users b
on a.user_id = b.user_id
group by a.user_id