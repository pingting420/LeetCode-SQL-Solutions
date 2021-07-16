select t.team_id, t.team_name,
ifnull(sum(case when m.host_goals>m.guest_goals and t.team_id = m.host_team then 3
when m.host_goals = m.guest_goals and  t.team_id = m.host_team then 1
when m.host_goals<m.guest_goals and t.team_id=m.host_team then 0
                        when m.host_goals>m.guest_goals and t.team_id=m.guest_team then 0
                        when m.host_goals=m.guest_goals and t.team_id=m.guest_team then 1
                        when m.host_goals<m.guest_goals and t.team_id=m.guest_team then 3
                    end),0) as num_points
                from Teams t, Matches M
            group by t.team_id
            order by num_points desc, t.team_id asc