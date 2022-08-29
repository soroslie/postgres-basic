-- WHERE

    -- Get all products with price less than 50000 and stock less than 20.
SELECT
    *
FROM
    products
WHERE
    price < 50000
    AND stock < 20
    
     -- Get all products with price between 3000 and 15000.
SELECT
    *
FROM
    products
WHERE
    PRICE BETWEEN 3000
    AND 15000 


-- ORDER BY

    -- Get all products then sort by their name (ascending).
SELECT
    *
FROM
    products p
ORDER BY
    P.name ASC 
    -- Get all products then sort by their stock (ascending) and price (descending).
    
SELECT
    *
FROM
    products P
ORDER BY
    P.name ASC, P.price DESC 
    

-- LIKE and ILIKE
    -- Get all products with name starts with "Minyak".
SELECT
    *
FROM
    products P
WHERE
    p.name LIKE 'Minyak%' 

    -- Get all products with name starts with "minyak" (case-insensitive).
SELECT
    *
FROM
    products P
WHERE
    p.name ILIKE 'minyak%' 
    

-- LIMIT and OFFSET
    
    -- Get the first four products.
SELECT
    *
FROM
    products P
LIMIT
    4 

    -- Get the next four products from point 7.
SELECT
    *
FROM
    products P
LIMIT
    4 OFFSET 4


-- Join
    -- Get all products along with their category name.
SELECT
    P.id,
    P.category_id,
    P.name,
    P.stock,
    P.price,
    P.product_date,
    P.created_at,
    P.updated_at,
    P.deleted_at,
    C.name AS category_name
FROM
    products P
    JOIN categories C ON P.category_id = C.id 


    -- Get all products along with their category name, where their category is Sembako and product date is from 1 January 2021 to 31 March 2021.
    SELECT
    P.*,
    C.name AS "category_name"
FROM
    products P
    JOIN categories C ON P.category_id = C.id 
    WHERE C.name = 'Sembako' AND product_date BETWEEN '2021-01-01' AND '2021-03-31' 

    -- Demonstrate the differences between INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN and FULL OUTER JOIN.
    --Inner Join = menunjukan row yang ada di kedua  table 
    --Full Outer Join = menunjukan row yang ada dan tidak ada di kedua table
    --Left Outer Join = menunjukan row yang dimiliki table pertama dan row yang dimiliki kedua table
    --Right Outer JOin - menunjukan row yang dimiliki table kedua dan row yang dimiliki kedua table
    -- https://towardsdatascience.com/what-is-the-difference-between-an-inner-and-an-outer-join-in-sql-5b5ec8277377