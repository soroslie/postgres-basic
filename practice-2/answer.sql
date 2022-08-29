CREATE TABLE categories(
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP
);

CREATE TABLE products(
    id BIGSERIAL PRIMARY KEY,
    category_id BIGINT,
    name VARCHAR,
    stock INTEGER,
    price DECIMAL,
    product_date DATE,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO
    categories(name, created_at, updated_at)
VALUES
    (
        'Sembako',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        'Kesehatan',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        'Elektronik',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    );

INSERT INTO
    products(
        category_id,
        name,
        stock,
        price,
        product_date,
        created_at,
        updated_at
    )
VALUES
    (
        '1',
        'Minyak Kelapa',
        '15',
        '20000',
        '2021-02-03',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '1',
        'Minyak Sawit',
        '9',
        '23000',
        '2021-02-01',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '1',
        'Minyak Nabati',
        '3',
        '15000',
        '2021-02-03',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '1',
        'Beras',
        '5',
        '3000',
        '2021-04-03',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '1',
        'Gula',
        '30',
        '1000',
        '2021-02-05',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '1',
        'Gula Merah',
        '45',
        '550',
        '2021-02-16',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '1',
        'Telur',
        '28',
        '2100',
        '2021-02-17',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '2',
        'Vitamin C',
        '5',
        '50000',
        '2021-03-08',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '2',
        'Vitamin D',
        '20',
        '160000',
        '2021-02-09',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '2',
        'Minyak Ikan Omega 3',
        '12',
        '180000',
        '2021-03-10',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '2',
        'Vitamin A',
        '52',
        '20000',
        '2021-02-03',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '2',
        'Minyak Kayu Putih',
        '12',
        '15000',
        '2021-04-12',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '2',
        'NaCL',
        '99',
        '7000',
        '2021-04-06',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '2',
        'Betadine',
        '52',
        '11000',
        '2021-02-13',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '3',
        'Setrika',
        '2',
        '230000',
        '2021-02-14',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '3',
        'Kulkas ',
        '4',
        '1450000',
        '2021-02-15',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '3',
        'Televisi',
        '23',
        '980000',
        '2021-03-16',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '3',
        'Mesin Cuci',
        '8',
        '2300000',
        '2021-03-17',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '3',
        'Komputer',
        '17',
        '1200000',
        '2021-04-18',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    ),
    (
        '3',
        'Lampu',
        '42',
        '64000',
        '2021-02-19',
        '2022-07-01 15:00:00',
        '2022-07-01 15:00:00'
    );

-- 1 Get the name, stock and price of all records from products table.
SELECT
    P.name,
    P.stock,
    P.price
FROM
    products P;

-- 2 Insert a new record below into products table:
-- category_id: 1
-- name: Kopi
-- stock: 80
-- price: 1500
-- product_date: 2022-07-01
-- created_at: now
-- updated_at: now
-- deleted_at: null
INSERT INTO
    products(
        category_id,
        name,
        stock,
        price,
        product_date,
        created_at,
        updated_at
    )
VALUES
    (
        1,
        'Kopi',
        80,
        1500,
        '2017-03-14',
        NOW(),
        NOW()
    );

-- 3 Update the record from point 2. Change its stock to 10 and its price to 5900.
UPDATE
    products
SET
    stock = 10,
    price = 5900
WHERE
    name = 'kopi';;

-- 4 Delete the record from point 2.
DELETE FROM
    products
WHERE
    name = 'kopi';

--5 Soft delete is a security feature to help protect backup data even after deletion. With soft delete, even if a malicious actor deletes the backup of a database
-- contoh:

-- sebuah column tidak di DELETE tp di ALTER 
UPDATE
    products
SET
    status = 'deleted',
WHERE
    category_id = 1;

--atau
    deleted_at = now()
