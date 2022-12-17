-- Ο διαχειριστής του server μήπως να ε΄ίναι μόνο από localhost ?
CREATE USER 'sysadmin'@'localhost' IDENTIFIED BY 'syspass';
GRANT ALL PRIVILEGES ON supermarket.* TO 'sysadmin'@'localhost';

-- Ο supervisor έχει πρόσβαση στα πάντα αλλά δεν είναι αυτός που διαχειρίζεται τον server
CREATE USER 'supervisor'@'%' IDENTIFIED BY 'superpass';
GRANT INSERT, UPDATE, SELECT ON supermarket.* TO 'supervisor'@'%';

-- Ο εργαζόμενος 
CREATE USER 'employee'@'%' IDENTIFIED BY 'emplopass';
GRANT SELECT ON supermarket.work_schedule, supermarket.products, supermarket.Discounts TO 'employee'@'%';

-- Ο πελάτης μπορεί να χρησιμοποιεί interfaces που βρίσκονται και μέσα στο super
CREATE USER 'client'@'%' IDENTIFIED BY 'clientpass';
GRANT SELECT ON supermarket.products, supermarket.discounts, supermarket.ingredients, supermarket.stock TO 'client'@'%';
GRANT INSERT, UPDATE, SELECT ON supermarket.reviews, supermarket.users TO 'client'@'%';

-- Ο business analyst μπορεί να δουλεύει on site ή να είναι κάποιος τρίτος
CREATE USER 'busianalyst'@'%' IDENTIFIED BY 'analystpass';
GRANT SELECT ON supermarket.orders, supermarket.purchase_history, supermarket.discounts, supermaket.reviews TO 'busianalyst'@'%';