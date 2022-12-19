SELECT stock.id, product.name, stock.expire_date
FROM ordered_from JOIN stock ON ordered_from.stock_id = stock.id 
JOIN product ON stock.product_id = product.id
WHERE product.supplier = "Olympos" AND ordered_from.date = "2022-11-12";
