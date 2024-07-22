-- select database
use springclothshop;

-- create table 
CREATE TABLE discount (
    id CHAR(36) PRIMARY KEY,
    code varchar(50) NOT NULL UNIQUE,
	start_date DATETIME NOT NULL,
	end_date DATETIME NOT NULL,
    value DECIMAL(10, 2) NOT NULL,
    active BOOLEAN DEFAULT 1,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    discount_type_id INT NOT NULL,
	FOREIGN KEY (discount_type_id) REFERENCES discount_type(id)
);


DELIMITER //
CREATE TRIGGER before_insert_discount
BEFORE INSERT ON discount
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //