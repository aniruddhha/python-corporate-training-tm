CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  supplier VARCHAR(255) NOT NULL,
  quantity INT NOT NULL
);

create table parts(
  id serial primary key,
  part_name varchar(255) not null,
  part_price decimal(10,2) not null,
  quantity int not null,
  
  product_id int not null,
  
  foreign key (product_id) references products(id)
);

INSERT INTO products (name, price, supplier, quantity) VALUES
('Laptop', 1000.00, 'Dell', 10),
('Smartphone', 700.00, 'Samsung', 20),
('Pendrive', 10, 'Transcend', 200);


select * from products;

INSERT INTO parts (product_id, part_name, part_price, quantity) VALUES
(1, 'Battery', 50.00, 5),
(1, 'Keyboard', 30.00, 3),
(2, 'Screen', 100.00, 4),
(2, 'Charger', 25.00, 10);
-- (8, 'Connector', 7, 500);

select * from parts;

-- Get only products with parts -> Inner Join
select products.id, products.name, parts.part_name, parts.part_price
from products 
inner join parts on products.id = parts.product_id;

-- Get all products, even those without parts
select products.id, products.name, parts.part_name, parts.part_price
from products 
left join parts on products.id = parts.product_id;

-- Get all parts, even if the product is missing
select products.id, products.name, parts.part_name, parts.part_price
from products 
right join parts on products.id = parts.product_id;

