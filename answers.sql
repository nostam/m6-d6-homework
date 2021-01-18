--Write a query to select all the customers from Germany
SELECT * FROM public.customers WHERE country = 'Germany'

--Update all customers who has UK value in country field, set their country as United Kingdom
UPDATE public.customers SET country = 'United Kingdom' WHERE country = 'UK'

--Remove all customers who has fax number null
DELETE FROM public.customers WHERE fax IS NULL

--Add yourself and 5 more customers to database
INSERT INTO public.customers (customer_id, company_name, contact_name, contact_title, address,  postal_code,city,  region, country, phone, fax)
VALUES  ('COMPA', 'company1', 'John 1', 'CEO', 'RegionA', '1234AB', 'SS', 'School', 'Strive', '12345678', '12345678'),
('COMPB','company2', 'John 2', 'CFO', 'RegionB', '1234BB','SS','School', 'Strive', '22345678', '22345678'),
('COMPC','company3', 'John 3', 'CCO', 'RegionC', '1234CB','SS', 'School','Strive', '32345678', '32345678'),
('COMPD','company4', 'John 4', 'CTO', 'RegionD', '1234DB','SS', 'School','Strive', '42345678', '42345678'),
('COMPE','company5', 'John 5', 'CSO', 'RegionE', '1234EB', 'SS','School','Strive', '52345678', '52345678')

--Select all customers who has contact_title as Sales Representative
SELECT * FROM public.customers WHERE contact_title = 'Sales Representative'

--Update company_name to Linkedin for the customer who has customer_id BOTTM
UPDATE public.customers SET company_name = 'Linkedin' WHERE customer_id = 'BOTTM'

--Select all customers who has region null and country USA
SELECT * FROM public.customers WHERE country = 'USA' AND region IS NULL

--Delete all customers who has postal_code 1734
SELECT * FROM public.customers WHERE postal_code LIKE '%1734%'

--Select all customers who has contact_title Owner
SELECT * FROM public.customers WHERE contact_title LIKE '%Owner%'

--Select only company_name , contact_name, contact_title from the customers who has country as Brazil
SELECT company_name, contact_name, contact_title FROM public.customers WHERE country = 'Brazil'

--Select and use alias to change contact_name to name and contact_title to title for the customers who has country Finland
SELECT contact_name AS name, contact_title AS title FROM public.customers WHERE country = 'Finland'

--Delete customers who has city value Lyon
DELETE FROM public.customers WHERE city = 'Lyon'

--Update all null region values to 'Unknown'
UPDATE public.customers SET region = 'Unknown' WHERE region IS NULL
