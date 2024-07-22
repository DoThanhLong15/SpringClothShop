-- select database
use springclothshop;

-- create table 
CREATE TABLE product_quantity (
    id CHAR(36) PRIMARY KEY,
    quantity int NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
	size_id INT NOT NULL,
    FOREIGN KEY (size_id) REFERENCES product_size(id),
    product_id CHAR(36) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id)
);


DELIMITER //
CREATE TRIGGER before_insert_product_quantity
BEFORE INSERT ON product_quantity
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //