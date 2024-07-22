-- select database
use springclothshop;

-- create table 
create table discount_type (
	id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(10) NOT NULL
);


-- select database
use springclothshop;

-- insert values
insert into discount_type (type)
values ('money');

insert into discount_type (type)
values ('percent');


-- select database
use springclothshop;

-- show all data row
select * from discount_type;