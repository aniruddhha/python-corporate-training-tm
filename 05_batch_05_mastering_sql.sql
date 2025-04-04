CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    supplier VARCHAR(255) NOT NULL,
    quantity INT NOT NULL
);

create table parts (
  id serial primary key,
  name varchar(255) not null,
  price decimal(10,2) not null,
  quantity int not null,
  
  prd_id int not null,
  
  foreign key(prd_id) references products(id)
);

INSERT INTO products (name, price, supplier, quantity) 
VALUES ('Laptop', 1000.00, 'Dell', 10),
('Smartphone', 700.00, 'Samsung', 20),
('Pen', 5, 'Pilot', 200);

select * from products;

INSERT INTO parts (prd_id, name, price, quantity) VALUES
(1, 'Battery', 50.00, 5),
(1, 'Keyboard', 30.00, 3),
(2, 'Screen', 100.00, 4),
(2, 'Charger', 25.00, 10);

select * from parts;

-- i need product name and its part name together
select products.name, parts.name
from products 
inner join parts on products.id = parts.prd_id;


select products.name, parts.name
from products 
left join parts on products.id = parts.prd_id;

select products.name, parts.name
from products 
right join parts on products.id = parts.prd_id;
