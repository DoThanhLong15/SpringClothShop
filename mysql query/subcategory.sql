-- select database
use springclothshop;

-- create table 
CREATE TABLE subcategory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
	description VARCHAR(255),
    category_id	INT NOT NULL,
        
    FOREIGN KEY (category_id) REFERENCES category(id)
);


-- select database
use springclothshop;

-- insert values
insert into subcategory (name, description, category_id)
values ('Áo Thun', 'Những mẫu áo thun thiết kế đa dạng với nhiều màu sắc, form dáng và họa tiết', 1);

insert into subcategory (name, description, category_id)
values ('Áo Polo', 'Áo polo tích hợp tính năng cao, kiểu dáng thon gọn', 1);

insert into subcategory (name, description, category_id)
values ('Quần Short', 'Từ phong cách chỉnh chu đến phong cách thường ngày, đa dạng nhiều loại vải thoải mái và form tôn dáng', 2);



-- select database
use springclothshop;

-- show all data row
select * from subcategory;