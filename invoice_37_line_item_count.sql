select InvoiceId, count(*) as number_of_items
from InvoiceLine
where InvoiceId = '37'