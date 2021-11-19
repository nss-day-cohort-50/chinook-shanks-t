select billingcountry, count(invoiceId) as num_invoices_per_country
from invoice i 
group by billingcountry