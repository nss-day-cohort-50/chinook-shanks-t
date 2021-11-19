select count(il.InvoiceLineId) as num_of_purchases_per_track, t.name as Track_name
from InvoiceLine il 
    join Track t  
    on t.trackId = il.trackId
    join Invoice i  
    on il.InvoiceId = i.InvoiceId
group by Track_name
order by num_of_purchases_per_track desc
limit 5