-- select database
use springclothshop;

-- create table 
CREATE TABLE payment (
    id INT AUTO_INCREMENT PRIMARY KEY,
	type VARCHAR(50) NOT NULL UNIQUE
);

-- select database
use springclothshop;

-- insert values
insert into payment (type)
values ('Momo');

insert into payment (type)
values ('Cash');


-- select database
use springclothshop;

-- show all data row
select * from payment;