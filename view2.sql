CREATE VIEW 'product_supplier' AS
SELECT products.name AS name, suppliers.company_name AS supplier, suppliers.email AS supplier_email, suppliers.phone AS supplier_phone
FROM products JOIN suppliers ON products.supplier = supplier.company_name;