select BillingCountry as country, round(sum(total), 2) as sales_per_country
from Invoice
group by country 
order by sales_per_country desc
limit 1


with cte as (
select 
BillingCountry as country, round(sum(total), 2) as sales_per_country
from Invoice
group by Country
)
select cte.* from cte
inner join (
    select country, max(sales_per_country) 
    from cte
)
