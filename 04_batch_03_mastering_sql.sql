CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  price DECIMAL(10,2),
  supplier VARCHAR(255), 
  quantity INT 
);

-- insert into products 
-- values(1, 'abc', 56.63, 'ccc', 50);

insert into products(name, supplier) 
values('tuv', 'yyyy');

select * from products;

-- updating existing data

update products
set price = 20.56
where id = 1;

select * from products;

update products
set price = 256.56, quantity = 89
where id = 1;

select * from products;

 -- deleting records
 
delete from products
where id = 1;

select * from products;

-- never never execute update and delete without where clause
























