SELECT * 
FROM products
WHERE products.price > 4
INTERSECT
SELECT *
FROM products 
WHERE products.supplier = "Bonduelle";