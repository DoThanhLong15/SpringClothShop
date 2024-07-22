-- select database
use springclothshop;

-- create table 
CREATE TABLE discount_using (
    id CHAR(36) PRIMARY KEY,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
	discount_id CHAR(36) NOT NULL,
    FOREIGN KEY (discount_id) REFERENCES discount(id),
    
    product_id CHAR(36),
    FOREIGN KEY (product_id) REFERENCES product(id),
    
    category_id	INT,
    FOREIGN KEY (category_id) REFERENCES category(id),
    
	subcategory_id INT ,
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(id)
);


DELIMITER //
CREATE TRIGGER before_insert_discount_using
BEFORE INSERT ON discount_using
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //