-- select database
use springclothshop;

-- create table 
CREATE TABLE comment (
    id CHAR(36) PRIMARY KEY,
    content TEXT NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    product_id CHAR(36) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    
    user_id CHAR(36) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
);


DELIMITER //
CREATE TRIGGER before_insert_comment
BEFORE INSERT ON comment
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //