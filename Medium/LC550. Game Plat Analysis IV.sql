select round(count(distinct player_id)/(select count(distinct player_d from Activity),2) as fraction
from Activity
where (player_id,event_date) in 
(
    select player_id, date(min(event_date)+1) # date function
    from Activity
    group by player_id
)

