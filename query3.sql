SELECT * 
FROM product
WHERE product.price < 2 AND product.supplier NOT IN
(SELECT product.supplier
FROM product 
WHERE product.supplier = "karamolegos");