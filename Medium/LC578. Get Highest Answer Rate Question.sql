#answer rate = 
select question_id as survery_log 
from survery_log
group by question_id
order by sum(action = 'answer') / (sum(action = 'show') + sum(action = 'answer'))desc
limit 1



'''
select question_id as survery_log
from
(select question_id, count(answer_id) / count(action) as rate
from survery_log
where answer_id != Null
gourp by question) t
order by t.rate desc
limit 1
'''

