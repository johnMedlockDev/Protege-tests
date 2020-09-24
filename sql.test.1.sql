-- Based on the test database, the database already has 3 tables, customers, products, and purchases
-- An example: Select a as column_1, b as column_2 from ...

-- Create a Sql Select Statement in MSSql or MySql with 2 columns: client_name, number_of_purchases
SELECT
  cu.name as client_name,
  COUNT(cu.name) as number_of_purchases
  FROM [test].[dbo].[purchases] as pu  inner join [test].[dbo].[customers] as cu on pu.customer_id = cu.id group by cu.name
