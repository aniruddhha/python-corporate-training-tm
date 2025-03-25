CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  supplier VARCHAR(255) NOT NULL,
  quantity INT NOT NULL
);

-- inserting new record

insert into products(name, price, supplier, quantity)
values ('abc', 45.63, 'aaa', 78);

select * from products;

-- updating existing record

update products
set supplier = 'bbbb'
where id = 1;

update products
set supplier = 'cccc', price = 888
where id = 1;

select * from products;

-- deleting record

delete from products
where id = 1;

select * from products;
