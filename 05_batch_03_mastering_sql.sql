CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    supplier VARCHAR(255) NOT NULL,
    quantity INT NOT NULL
);

-- insert statement

insert into products ( name, price, supplier, quantity)
values ('abc', 45.63, 'aaa', 10);

select * from products;

-- update statement

update products
set supplier = 'bbb'
where id = 1;

select * from products;

update products
set price = 999, quantity = 50
where id = 1;

select * from products;

-- delete statement

delete from products 
where id = 1;

select * from products;
