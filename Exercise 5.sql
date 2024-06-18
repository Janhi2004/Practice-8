with june_user as (SELECT user_id, event_date from user_actions
group by user_id, event_date
having extract(month from event_date) = 6), 

july_user as (SELECT user_id, event_date from user_actions
group by user_id, event_date
having extract(month from event_date) = 7),

July_2022 as (select jun.user_id 
from june_user as jun
inner join july_user as jul
on jun.user_id = jul.user_id
group by jun.user_id)

select 7 as month, count(user_id) as month_active_user from July_2022
