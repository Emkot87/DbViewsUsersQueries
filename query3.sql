SELECT * 
FROM products
WHERE products.price < 2 AND products.supplier NOT IN
(SELECT products.supplier
FROM products 
WHERE products.supplier = "karamolegos");