-- Get the total records of products.
SELECT COUNT(P.name) FROM products P
-- Get the highest price of products.
SELECT MAX(P.price) FROM products P
-- Get the total stock of all products.
SELECT SUM(P.stock) FROM products P
-- Get the total number of products for each category name.
SELECT C.name, count(p.name) number_of_product FROM categories C JOIN products P on P.category_id = C.id GROUP BY C.name