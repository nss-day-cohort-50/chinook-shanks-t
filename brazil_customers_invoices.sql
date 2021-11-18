select FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
from customer
    join Invoice
    on customer.customerId = invoice.customerId
where country = "Brazil"