select id, count(t.id) as num from 

    (select requester_id as id
    from request_accepted
    union all
    select accepter_id as id 
    from request_accepted)t
    group by t.id
    order by count(t.id) desc
    limit 1


