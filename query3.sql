SELECT * 
FROM products
WHERE products.price < 2
MINUS
SELECT *
FROM products 
WHERE products.supplier = "karamolegos";