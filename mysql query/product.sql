-- select database
use springclothshop;

-- create table 
CREATE TABLE product (
    id CHAR(36) PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    rating DECIMAL(5,2) DEFAULT 0,
    ratin_count INT DEFAULT 0,
	description VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    
    subcategory_id INT NOT NULL,
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(id)
);


DELIMITER //
CREATE TRIGGER before_insert_product
BEFORE INSERT ON product
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //