select count(il.InvoiceLineId) as num_of_purchases_per_track_2013, t.name as Track_name
from InvoiceLine il 
    join Track t  
    on t.trackId = il.trackId
    join Invoice i  
    on il.InvoiceId = i.InvoiceId
where strftime('%Y', InvoiceDate) = '2013' 
group by Track_name
order by num_of_purchases_per_track_2013 desc
