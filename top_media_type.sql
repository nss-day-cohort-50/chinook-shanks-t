select count(il.InvoiceLineId) as num_of_purchases_per_media_type, mt.name as Media_Type
from InvoiceLine il 
    join Track t  
    on t.trackId = il.trackId
    join Invoice i  
    on il.InvoiceId = i.InvoiceId
    join MediaType mt
    on mt.MediaTypeId = t.MediaTypeId
group by Media_Type
order by num_of_purchases_per_media_type desc
limit 1

