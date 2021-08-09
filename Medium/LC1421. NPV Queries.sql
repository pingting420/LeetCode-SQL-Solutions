select q.id, q.year, ifnull(npv,0) npv
from queries q left join npv n
on q.id = n.id and q.year = n.year