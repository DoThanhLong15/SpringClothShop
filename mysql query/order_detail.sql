-- select database
use springclothshop;

-- create table 
CREATE TABLE order_detail (
    id CHAR(36) PRIMARY KEY,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    
	size_id INT NOT NULL,
    FOREIGN KEY (size_id) REFERENCES product_size(id),
    
    product_id CHAR(36) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    
    order_id CHAR(36) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES sale_order(id)
);


DELIMITER //
CREATE TRIGGER before_insert_order_detail
BEFORE INSERT ON order_detail
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //