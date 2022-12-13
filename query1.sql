SELECT products.name, stock.expire_date
FROM products JOIN stock ON products.id = stock.product_id
WHERE products.supplier = "Mebgal AE" AND stock.order_date = "13/05/2020" 
