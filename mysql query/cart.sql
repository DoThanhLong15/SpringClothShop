-- select database
use springclothshop;

-- create table 
CREATE TABLE cart (
    id CHAR(36) PRIMARY KEY,
    quantity INT NOT NULL,
    
	size_id INT NOT NULL,
    FOREIGN KEY (size_id) REFERENCES product_size(id),
    
    product_id CHAR(36) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    
    user_id CHAR(36) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
);


DELIMITER //
CREATE TRIGGER before_insert_cart
BEFORE INSERT ON cart
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //