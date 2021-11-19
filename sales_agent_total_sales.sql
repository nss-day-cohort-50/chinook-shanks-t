select (e.FirstName ||' '|| e.LastName) as employee_name, sum(total) as total_sales
from Employee e
    join Customer c
        on e.EmployeeId = c.supportRepId
    join Invoice i
        on i.customerId = c.customerId
group by employee_name