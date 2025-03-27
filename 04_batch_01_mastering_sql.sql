CREATE TABLE products(
  id SERIAL,
  name VARCHAR(255),
  price DECIMAL(10,2),
  supplier VARCHAR(255),
  quantity INT
);

-- inserting data to table
insert into products 
values(1, 'abc', 45.63, 'aaa', 10);

-- fetching the data from table
select * 
from products;
