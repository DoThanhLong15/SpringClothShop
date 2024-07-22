-- select database
use springclothshop;

-- create table 
CREATE TABLE order_status (
    id INT AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(50) NOT NULL UNIQUE
);


-- select database
use springclothshop;

-- insert values
insert into order_status (status)
values ('pending');

insert into order_status (status)
values ('complete');

insert into order_status (status)
values ('cancel');


-- select database
use springclothshop;

-- show all data row
select * from order_status;