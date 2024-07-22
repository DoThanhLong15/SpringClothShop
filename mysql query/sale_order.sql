-- select database
use springclothshop;

-- create table 
CREATE TABLE sale_order (
    id CHAR(36) PRIMARY KEY,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	address VARCHAR(255) NOT NULL,
    
    status_id INT NOT NULL,
    FOREIGN KEY (status_id) REFERENCES order_status(id),
    
    user_id	CHAR(36) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    
	payment_id INT NOT NULL,
    FOREIGN KEY (payment_id) REFERENCES payment(id)
);


DELIMITER //
CREATE TRIGGER before_insert_shop_order
BEFORE INSERT ON shop_order
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //