-- Ο διαχειριστής του server μήπως να ε΄ίναι μόνο από localhost ?
CREATE USER 'sysadmin'@'localhost' IDENTIFIED BY 'syspass';
GRANT ALL PRIVILEGES ON supermarket.* TO 'sysadmin'@'localhost';

-- Ο supervisor έχει πρόσβαση στα πάντα αλλά δεν είναι αυτός που διαχειρίζεται τον server
CREATE USER 'supervisor'@'%' IDENTIFIED BY 'superpass';
GRANT INSERT, UPDATE, SELECT ON supermarket.* TO 'supervisor'@'%';

-- Ο εργαζόμενος 
CREATE USER 'employee'@'%' IDENTIFIED BY 'emplopass';
GRANT SELECT ON supermarketdb.schedule TO 'employee'@'%';
GRANT SELECT ON supermarketdb.product TO 'employee'@'%';
GRANT SELECT ON supermarketdb.Discounts TO 'employee'@'%';

-- Ο πελάτης μπορεί να χρησιμοποιεί interfaces που βρίσκονται και μέσα στο super
CREATE USER 'client'@'%' IDENTIFIED BY 'clientpass';
GRANT SELECT ON supermarketdb.product TO 'client'@'%';
GRANT SELECT ON supermarketdb.discounts TO 'client'@'%';
GRANT SELECT ON supermarketdb.ingredients TO 'client'@'%';
GRANT SELECT ON  supermarketdb.stock TO 'client'@'%';
GRANT INSERT, UPDATE, SELECT ON supermarketdb.reviews TO 'client'@'%';
GRANT INSERT, UPDATE, SELECT ON supermarketdb.customers TO 'client'@'%';

-- Ο business analyst μπορεί να δουλεύει on site ή να είναι κάποιος τρίτος
CREATE USER 'busianalyst'@'%' IDENTIFIED BY 'analystpass';
GRANT SELECT ON supermarketdb.ordered_from TO 'busianalyst'@'%';
GRANT SELECT ON supermarketdb.`customers-buy-products` TO 'busianalyst'@'%';
GRANT SELECT ON  supermarketdb.discounts TO 'busianalyst'@'%';
GRANT SELECT ON  supermarketdb.reviews TO 'busianalyst'@'%';