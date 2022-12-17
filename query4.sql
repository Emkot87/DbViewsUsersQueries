SELECT * 
FROM products
WHERE products.category = "Dairy" and products.supplier IN  ("Mevgal", "Olympos");