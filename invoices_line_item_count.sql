select InvoiceId, count(*) as number_of_items
from InvoiceLine
group by InvoiceId