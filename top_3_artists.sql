select count(il.InvoiceLineId) as num_of_purchases_per_track, a.name as Artist_Name
from InvoiceLine il 
    join Track t  
    on t.trackId = il.trackId
    join Invoice i  
    on il.InvoiceId = i.InvoiceId
    join Artist a
    on t.composer = a.name
group by Artist_Name
order by num_of_purchases_per_track desc
limit 3
