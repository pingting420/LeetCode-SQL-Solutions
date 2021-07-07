select player_id, event_date, sum(games_played)over(partition by player_id order by event_date) as games_played_so_far
from activity

'''
using the function of sum(game_played)over()