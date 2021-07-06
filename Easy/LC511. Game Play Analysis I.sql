select player_id, min(event_date) as first_login
from activity
group by games_player