CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  supplier VARCHAR(255) NOT NULL,
  quantity INT NOT NULL
);

INSERT INTO products VALUES (2,'abc', 56.32, 'ssss', 45);

INSERT INTO products(name, price, supplier, quantity) 
VALUES ('pqr', 78.63, 'aaaa', 89);

-- INSERT INTO products VALUES (2,'abc', 56.32, 'ssss', 45);


SELECT * FROM products;
