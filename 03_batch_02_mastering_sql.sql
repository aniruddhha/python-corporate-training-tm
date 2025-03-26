CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  supplier VARCHAR(255) NOT NULL,
  quantity INT NOT NULL CHECK(quantity > 0)
);

-- Comments starts with --

-- insert into products values(1, 'abc', 78.52, 'sss', 10);

-- insert into products values(1, 'pqr', 7.5, 'qqq', 1);

-- insert into products values(1,null, 7.5, 'qqq', 1);

insert into products (name, price, supplier, quantity)
values('abc', 78.52, 'zzz', 78);

insert into products (name, price, supplier, quantity) values 
('pqr', 50.89, 'aaa', 100),
('tuv', 41.23, 'bbb', 50);

select * from products;

update products
set name = 'uuu'
where id = 1;

select * from products;

update products
set name = 'lll', supplier = 'lll'
where id = 3;

select * from products;

delete from products 
where id = 3;

select * from products;

-- Never Never execute update or delete without where clause.
