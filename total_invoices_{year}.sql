select count(*) as total_invoices_from_2009_and_2011
from Invoice
where strftime('%Y', InvoiceDate) = '2009' or '2011'