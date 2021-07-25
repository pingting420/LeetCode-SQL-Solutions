select min(log_id) as start_id, max(log_id) as end_id
from
(select log_id, log_id - rank_over()partition(order by log_id) as diff
from Logs)
group by diff
