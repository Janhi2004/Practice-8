with rankedcategory as (
select category, product, spend,
rank() over (partition by category order by spend desc)
from product_spend)

select category, product, spend from rankedcategory
where rank = 1 or rank = 2
