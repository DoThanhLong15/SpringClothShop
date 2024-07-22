-- select database
use springclothshop;

-- create table 
CREATE TABLE product_image (
    id CHAR(36) PRIMARY KEY,
    image VARCHAR(255) NOT NULL,
    
    product_id CHAR(36) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id)
);


DELIMITER //
CREATE TRIGGER before_insert_product_image
BEFORE INSERT ON product_image
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //