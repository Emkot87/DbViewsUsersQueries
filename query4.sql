SELECT * 
FROM products
WHERE products.category = "Dairy" and products.supplier = "Mevgal"
UNION
SELECT *
FROM products 
WHERE products.category = "Dairy" and products.supplier = "Olympos";