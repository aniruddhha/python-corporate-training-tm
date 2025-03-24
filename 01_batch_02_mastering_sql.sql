CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    supplier VARCHAR(255) NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO products (id, name, price, supplier, quantity)
VALUES (1, 'abc', 78.52, 'aaaa', 20);

INSERT INTO products (id, name, price, supplier, quantity)
VALUES (2, 'pqr', 42.10, 'aaaa', 50);

-- INSERT INTO products (id, price, supplier, quantity)
-- VALUES (3,42.10, 'aaaa', 50);

SELECT *
FROM products;

UPDATE products
SET name = 'sss'
WHERE id = 1;

UPDATE products
SET name = 'sss', supplier = 'dddd'
WHERE id = 1;

SELECT *
FROM products;

DELETE FROM products
WHERE id = 2;

SELECT *
FROM products;

-- DO NOT UPDATE or DELETE whithout having WHERE condition.
