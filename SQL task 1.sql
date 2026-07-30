create schema enteries;

create table enteries.info(
 product_id serial not null,
product_name text not null,
Sku_code varchar(10) UNIQUE,
price float not null,
stock_quantity int 
)
--------------------------------
insert into enteries.info(product_name,Sku_code,price,stock_quantity,product_categories)
values('wireless mouse','sku_101',25.23,120,),
       ('gaming keyword','sku_102',100.43,15),
	   ('usb cable','sku_103',250.64,34),
	   ('type-c','sku_104',43.38,45);
-------------------------------
alter table enteries.info

--add column supplier_id int
--drop column price;
add column price numeric(10,2);

add constraint fk_supp
foreign key (supplier_id)
references enteries.supplier(supplier_id)
--add column product_categories varchar(50) not null default 'tech';
---------------------------------
drop column Sku_code ;
--------------------------------

SELECT *FROM enteries.info;
SELECT *FROM enteries.supplier;
select *from enteries.info where price >50;
select *from enteries.info where price <20 and stock_quantity>200;

-----------------------------------------
create table enteries.supplier(
supplier_id serial primary key,
supplier_name varchar(100) not null
)

------------------------------
insert into  enteries.supplier(supplier_name)
values('Ali'),
       ('Ahmed'),
	   ('inam'),
	  ('khan'),
	   ('malik')
----------------------------------------------

update enteries.info
set supplier_id=1
where product_id =1;
update enteries.info
set supplier_id=2
where product_id =2;
update enteries.info
set supplier_id=3
where product_id =3;
update enteries.info
set supplier_id=4
where product_id =4;
update enteries.info
set supplier_id=5
where product_id =5;
------------------------------------
update enteries.info
set price =price*1.10
where price>100
set price =120
where product_name='wireless mouse';
update enteries.info
set price =300
where product_name='gaming keyword';
update enteries.info
set price =70
where product_name='usb cable';
update enteries.info
set price =40
where product_name='type-c';

------------------------------
delete from enteries.info
where stock_quantity=0
and price <10
