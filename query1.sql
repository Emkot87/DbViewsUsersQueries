SELECT product.name, stock.expire_date
FROM product JOIN stock ON product.id = stock.product_id
WHERE product.supplier = "Mebgal AE" AND stock.order_date = "13/05/2020" 