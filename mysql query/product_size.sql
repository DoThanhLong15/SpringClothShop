-- select database
use springclothshop;

-- create table 
CREATE TABLE product_size (
    id INT AUTO_INCREMENT PRIMARY KEY,
    size CHAR(10) NOT NULL UNIQUE
);


-- select database
use springclothshop;

-- insert values
insert into product_size (size)
values ('S');

insert into product_size (size)
values ('M');

insert into product_size (size)
values ('L');

insert into product_size (size)
values ('XL');


-- select database
use springclothshop;

-- show all data row
select * from product_size;