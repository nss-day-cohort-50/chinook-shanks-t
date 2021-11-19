select InvoiceLineId, Name
from InvoiceLine i
    join Track t
    on i.trackId = t.trackId
    order by InvoiceLineId