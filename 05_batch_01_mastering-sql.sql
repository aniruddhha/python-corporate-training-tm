
create table products (
  id serial primary key,
  name varchar(255) not null,
  price decimal(8,3) not null,
  supplier varchar(255) not null,
  quantity int not null
);

INSERT INTO products (name, price, supplier, quantity) VALUES 
('Laptop', 899.99, 'Tech Solutions', 20),
('Smartphone', 699.99, 'Mobile Inc.', 50),
('Tablet', 499.99, 'Gadget World', 30),
('Wireless Mouse', 29.99, 'Tech Solutions', 100),
('Mechanical Keyboard', 79.99, 'Keyboard Masters', 75),
('Gaming Headset', 119.99, 'SoundTech', 40),
('External Hard Drive', 89.99, 'Storage Plus', 60),
('USB Flash Drive', 19.99, 'Tech Solutions', 150),
('Smartwatch', 199.99, 'Gadget World', 25),
('Bluetooth Speaker', 49.99, 'SoundTech', 80),
('Monitor 24 inch', 179.99, 'Display Co.', 35),
('Monitor 27 inch', 229.99, 'Display Co.', 20),
('Printer', 129.99, 'Office Supplies Ltd.', 45),
('Wireless Router', 99.99, 'Network Solutions', 70),
('Graphics Card', 399.99, 'Gamer Gear', 15),
('Gaming Chair', 249.99, 'Furniture Plus', 10),
('Mechanical Pencil', 5.99, 'Office Supplies Ltd.', 200),
('Notebook', 2.99, 'Office Supplies Ltd.', 500),
('Desk Lamp', 39.99, 'Lighting Solutions', 90),
('Portable Charger', 29.99, 'Gadget World', 120),
('Smart TV 50 inch', 599.99, 'Home Electronics', 18),
('Smart TV 65 inch', 899.99, 'Home Electronics', 12),
('Electric Kettle', 39.99, 'Home Essentials', 100),
('Air Fryer', 129.99, 'Kitchen Appliances', 30),
('Blender', 59.99, 'Kitchen Appliances', 55),
('Vacuum Cleaner', 149.99, 'Home Essentials', 25),
('Ceiling Fan', 89.99, 'Home Essentials', 40),
('Refrigerator', 799.99, 'Appliance World', 10),
('Microwave Oven', 99.99, 'Kitchen Appliances', 50),
('Electric Toothbrush', 49.99, 'Personal Care Inc.', 80),
('Hair Dryer', 39.99, 'Personal Care Inc.', 70),
('Washing Machine', 699.99, 'Appliance World', 15),
('Dishwasher', 499.99, 'Appliance World', 12),
('Smart Doorbell', 149.99, 'cc', 35),
('Security Camera', 199.99, 'Smart Home Tech', 40),
('Coffee Maker', 89.99, 'Kitchen Appliances', 60),
('Toaster', 29.99, 'Kitchen Appliances', 100),
('Electric Shaver', 59.99, 'Personal Care Inc.', 75),
('Water Filter', 69.99, 'Home Essentials', 90),
('Treadmill', 999.99, 'Fitness World', 5),
('Dumbbell Set', 79.99, 'Fitness World', 40),
('Yoga Mat', 19.99, 'Fitness World', 120),
('Bluetooth Earbuds', 79.99, 'SoundTech', 100),
('Portable Air Conditioner', 299.99, 'Home Essentials', 10),
('Dehumidifier', 199.99, 'Home Essentials', 20),
('Electric Scooter', 499.99, 'Urban Transport', 15),
('Bicycle', 299.99, 'Urban Transport', 25),
('Wireless Charger', 24.99, 'Tech Solutions', 150),
('LED Light Bulb', 9.99, 'Lighting Solutions', 300),
('HDMI Cable', 14.99, 'Tech Solutions', 200);


select name, price
from products;

select name, supplier
from products
where price > 500;

select name, price 
from products 
where supplier = 'Tech Solutions';

select name, price 
from products 
where supplier = 'Tech Solutions' and price < 100;

select *
from products;
