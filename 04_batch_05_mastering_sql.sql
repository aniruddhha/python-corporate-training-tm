CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  supplier VARCHAR(255) NOT NULL,
  quantity INT NOT NULL
);

create table parts (
  id serial primary key,
  name VARCHAR(255) not null,
  price decimal(5,2) not null,
  quantity int not null,
  
  product_id int not null,
  
  foreign key(product_id) references products
);

INSERT INTO products (name, price, supplier, quantity) VALUES
('Laptop', 1000.00, 'Dell', 10),
('Smartphone', 700.00, 'Samsung', 20),
('ROUTER', 25.00, 'Cisco', 5);

select * from products;


INSERT INTO parts (product_id, name, price, quantity) VALUES
(1, 'Battery', 50.00, 5),
(1, 'Keyboard', 30.00, 3),
(2, 'Screen', 100.00, 4),
(2, 'Charger', 25.00, 10);

select * from parts;


-- I want to print product and its parts together


-- Left Join: Get all products, even those without parts
select products.id, products.name, parts.name, parts.price
from products 
left join parts 
on products.id = parts.product_id;

-- Inner Join: Get only products with parts
select products.id, products.name, parts.name, parts.price
from products 
inner join parts 
on products.id = parts.product_id;

-- Right Join: Get all parts, even if the product is missing
select products.id, products.name, parts.name, parts.price
from products 
right join parts 
on products.id = parts.product_id;
