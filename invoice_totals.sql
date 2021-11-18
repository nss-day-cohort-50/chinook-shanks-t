select e.FirstName ||' '|| e.LastName as CustomerName, c.firstname ||' '|| c.lastname as SalesAgentName, c.country as CustomerCountry, total as InvoiceTotal
from Employee e
    join Customer c
        on e.EmployeeId = c.supportRepId
    join Invoice i
        on i.customerId = c.customerId