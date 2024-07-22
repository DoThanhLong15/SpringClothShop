-- select database
use springclothshop;

-- create table 
CREATE TABLE favourite_product (
    id CHAR(36) PRIMARY KEY,
    
	user_id CHAR(36) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    
    product_id CHAR(36) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id)
);


DELIMITER //
CREATE TRIGGER before_insert_favourite_product
BEFORE INSERT ON favourite_product
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //