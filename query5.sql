SELECT products.id, supplier.company_name, supplier.email
FROM Product JOIN Suppliers ON Supplier.company_name=Product.supplier
JOIN Stock ON Products.id = Stock.product_id 
WHERE Stock.expire_date < "19/11/2022";
