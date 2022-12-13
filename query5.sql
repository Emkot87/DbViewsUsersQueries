SELECT product.id, supplier.company_name, supplier.email
FROM products JOIN stock ON products.id = stock.product_id 
WHERE stock.expire_date < "19/11/2022" 
JOIN suppliers ON product.supplier = supplier.company_name;