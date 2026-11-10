INSERT INTO products (product_name, producer, year_making, expire_date, price)
SELECT * FROM (
    VALUES
        ('Laptop Dell XPS 13', 'Dell', 2024, '2028-12-31', 14900000.0),
        ('iPhone 15 Pro', 'Apple', 2024, '2027-12-31', 22990000.0),
        ('Samsung Galaxy S24', 'Samsung', 2024, '2027-12-31', 18990000.0),
        ('AirPods Pro 2', 'Apple', 2024, '2027-12-31', 4990000.0),
        ('MacBook Air M3', 'Apple', 2024, '2028-12-31', 25990000.0)
) AS temp(product_name, producer, year_making, expire_date, price)
WHERE NOT EXISTS (SELECT 1 FROM products);
