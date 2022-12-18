SELECT product.id, suppliers.company_name, suppliers.email
FROM product JOIN suppliers ON suppliers.company_name=product.supplier
JOIN stock ON product.id = stock.product_id 
WHERE stock.expire_date < "2022-10-20";
