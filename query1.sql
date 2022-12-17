SELECT Stock.id, Product.name, Stock.expire_date
FROM Ordered_from JOIN Stock ON Ordeded_from.stock_id = stock.id 
JOIN Product on stock.product_id = Product.id
WHERE products.supplier = "Mebgal AE" AND stock.order_date = "13/05/2020" 
