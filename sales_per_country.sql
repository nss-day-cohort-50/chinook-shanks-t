select BillingCountry as country, round(sum(total), 2) as sales_per_country
from Invoice
group by country