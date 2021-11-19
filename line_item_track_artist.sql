select InvoiceLineId, t.name, t.composer
from InvoiceLine i
    join Track t
    on i.trackId = t.trackId
    order by upper(composer) desc
    