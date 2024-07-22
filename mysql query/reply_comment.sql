-- select database
use springclothshop;

-- create table 
CREATE TABLE reply_comment (
    id CHAR(36) PRIMARY KEY,
    
    reply_on_comment_id CHAR(36) NOT NULL,
    FOREIGN KEY (reply_on_comment_id) REFERENCES comment(id),
    
    comment_id CHAR(36) NOT NULL UNIQUE,
    FOREIGN KEY (comment_id) REFERENCES comment(id)
);


DELIMITER //
CREATE TRIGGER before_insert_reply_comment
BEFORE INSERT ON reply_comment
FOR EACH ROW
BEGIN
    IF NEW.id IS NULL THEN
        SET NEW.id = UUID();
    END IF;
END;
DELIMITER //