-- Based on the test database, the database already has 3 tables, customers, products, and purchases
-- An example: Select a as column_1, b as column_2 from ...

-- Create a Sql Select Statement in MSSql or MySql with 2 columns: product_name, number_of_purchases
select pr.name as product_name,
count(pr.name) as number_of_purchases
FROM [test].[dbo].[purchases] as pu inner join [test].[dbo].[products] as pr on pu.product_id = pr.id group by pr.name