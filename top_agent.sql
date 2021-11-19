with cte as (
select 
(e.FirstName ||' '|| e.LastName) as employee_name, 
sum(total) as total_sales
from Employee e
    join Customer c
        on e.EmployeeId = c.supportRepId
    join Invoice i
        on i.customerId = c.customerId
)
select cte.* from cte
inner join (
    select employee_name, max(total_sales) 
    from cte
    group by employee_name
)

