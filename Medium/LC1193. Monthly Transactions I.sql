select date_format(trans_date, "%Y-%m") as month, country, count(*) trans_count,
sum(state='approved') approved_count,
sum(amount) trans_total_amount,
sum(case when state = "approve" then amount else 0 end) approved_total_amount
from transactions
group by country, Date_format(trans_date,"%Y-%m")

#learn to use data_format