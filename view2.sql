CREATE VIEW `product_supplier` AS
SELECT product.name AS product_name, suppliers.company_name AS supplier, suppliers.email AS supplier_email, suppliers.phone_number AS supplier_phone
FROM product JOIN suppliers ON product.supplier = suppliers.company_name;
