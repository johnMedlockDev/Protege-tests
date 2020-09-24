-- Based on the test database, the database already has 3 tables, customers, products, and purchases
-- An example: Select a as column_1, b as column_2 from ...

-- Create a Sql Select Statement in MSSql or MySql with 2 columns: client_name, sum_of_purchases

select
cu.name as client_name,
sum(pr.price) as sum_of_purchases
from
[test].[dbo].[customers] as cu
inner join [test].[dbo].[purchases] as pu on (cu.id = pu.customer_id)
inner join [test].[dbo].[products] as pr on (pu.product_id = pr.id)
group by cu.name