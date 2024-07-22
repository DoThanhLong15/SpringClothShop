-- select database
use springclothshop;

-- create table 
CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);


-- select database
use springclothshop;

-- insert values
insert into category (name)
values ('Áo');

insert into category (name)
values ('Quần');


-- select database
use springclothshop;

-- show all data row
select * from category;