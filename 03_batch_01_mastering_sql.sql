CREATE TABLE products(
  id SERIAL,
  name VARCHAR(255),
  price DECIMAL(10, 2),
  supplier VARCHAR(255),
  quantity INT
);

insert into products 
values(1, 'abc', 45.85, 'ssss', 20);

insert into products 
values (2, 'abc', 45.85, 'ssss', 20),
       (3, 'abc', 45.85, 'ssss', 20);


select * 
from products;

select name, price
from products;
