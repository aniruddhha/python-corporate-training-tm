CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    supplier VARCHAR(255) NOT NULL,
    quantity INT NOT NULL
);

CREATE TABLE parts (
  id SERIAL PRIMARY KEY,
  part_name VARCHAR(255) NOT NULL,
  part_price DECIMAL(10, 2) NOT NULL,
  quantity INT NOT NULL,
  
  product_id INT NOT NULL,
  
  FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO products (name, price, supplier, quantity) VALUES
('Laptop', 1000.00, 'Dell', 10),
('Smartphone', 700.00, 'Samsung', 20),
('Mouse', 78.00, 'Dell', 20);

INSERT INTO parts (product_id, part_name, part_price, quantity) VALUES
(1, 'Battery', 50.00, 5),
(1, 'Keyboard', 30.00, 3),
(2, 'Screen', 100.00, 4),
(2, 'Charger', 25.00, 10);

select * from products;

select * from parts;

-- Get only products with parts - inner join
 SELECT products.id , products.name, parts.part_name, parts.part_price
 FROM products
 INNER JOIN parts ON products.id = parts.product_id;
 
SELECT p.id , p.name, pr.part_name, pr.part_price
FROM products p
INNER JOIN parts pr ON p.id = pr.product_id;
 
 -- Get all products, even those without parts - Left Join
SELECT p.id AS product_id, p.name, pr.part_name, pr.part_price
FROM products p
LEFT JOIN parts pr ON p.id = pr.product_id;
 
 -- Get all parts, even if the product is missing - Right Join
SELECT p.id AS product_id, p.name AS product_name, pr.part_name, pr.part_price
FROM products p
RIGHT JOIN parts pr ON p.id = pr.product_id;

 
