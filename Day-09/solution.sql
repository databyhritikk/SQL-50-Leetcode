with N1 as (
select W.*, lag(temperature,1) over(order by recorddate) prev_day_temp from weather W)
select W.id from n1 where temperature > prev_day_temp