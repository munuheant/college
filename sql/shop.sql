CREATE database shop; -- comment if dB already exists 
use shop;
go
CREATE TABLE product_flavor(
	flavor_id int IDENTITY(1,1) PRIMARY KEY, 
	name nvarchar(30) NOT NULL , 
	color nvarchar(30) NOT NULL 
);
CREATE TABLE product_category(
	category_id int IDENTITY(1,1) PRIMARY KEY, 
	name nvarchar(50) NOT NULL 
);
CREATE TABLE supplier(
	supplier_id int IDENTITY(1,1) PRIMARY KEY, 
	names nvarchar(50) NOT NULL , 
	contact_person nvarchar(20) NOT NULL ,
	contact_phone nvarchar(12) NOT NULL 
);
CREATE TABLE manufacturer(
	manufacturer_id int IDENTITY(1,1) PRIMARY KEY, 
	names nvarchar(50) NOT NULL , 
	contact_person nvarchar(20) NOT NULL ,
	contact_phone nvarchar(12) NOT NULL 
);
CREATE TABLE customer(
	customer_id int IDENTITY(1,1) PRIMARY KEY, 
	names nvarchar(50) NOT NULL , 
	national_id int NOT NULL ,
	cellphone nvarchar(12) NOT NULL ,
	royalty_points int  NOT NULL  default(0)
);
CREATE TABLE employee(
	staff_number nvarchar IDENTITY(1,1) PRIMARY KEY, 
	names nvarchar(50) NOT NULL , 
	national_id int NOT NULL ,
	cellphone nvarchar(12) NOT NULL ,
	designation nvarchar(20)  NOT NULL 
);
CREATE TABLE product(
	barcode nvarchar(40) NOT NULL PRIMARY KEY, 
	name nvarchar(30) NOT NULL,
	manufacturer INT NOT NULL ,
	category int NOT NULL , 
	flavor int, 
	package nvarchar(20),
	description nvarchar(500)
);
CREATE TABLE purchase(
	purchase_id int IDENTITY(1,1) PRIMARY KEY, 
	purchase_date date NOT NULL , 
	product nvarchar NOT NULL ,
	employee nvarchar NOT NULL , 
	cost int NOT NULL ,
	payment_mode nvarchar(20) NOT NULL ,
	payment_details nvarchar(30) NOT NULL ,
	quantity int NOT NULL , 
	supplier int NOT NULL 
);
CREATE TABLE sale(
	sale_id int IDENTITY(1,1) PRIMARY KEY, 
	sale_date date NOT NULL , 
	product nvarchar NOT NULL ,
	employee nvarchar NOT NULL , 
	customer int NOT NULL , 
	price int NOT NULL ,
	payment_mode nvarchar(20) NOT NULL ,
	payment_details nvarchar(30) NOT NULL ,
	quantity int NOT NULL 
);

insert into product_flavor(name, color)values('chocolate', 'chocolate'), 
('vanilla', 'vanilla white'), 
('mango', 'yellow'), 
('strawberry', 'strawberry');

insert into product_category(name)values('maize flour'), 
('wheat flour'), 
('cooking oil'), 
('milk product'),
('detergent'), 
('bathing soap'), 
('bar soap'), 
('tooth paste'), 
('tissue paper'), 
('candy'), 
('bread'), 
('grain'), 
('soft drink');

insert into manufacturer(names, contact_person, contact_phone)values('kapa oil' , 'John Ongeri', 0733688787);
insert into manufacturer(names, contact_person, contact_phone)values('pwani oil' , 'Grace Kimani', 0791904523);
insert into manufacturer(names, contact_person, contact_phone)values('pz cussons' , 'Henry Njoroge', 0722809523);
insert into manufacturer(names, contact_person, contact_phone)values('chandaria', 'Mark Kiprono', 0791904523);
insert into manufacturer(names, contact_person, contact_phone)values('kevian' , 'James Kwako', 0722547653);
insert into manufacturer(names, contact_person, contact_phone)values('ketepa', 'Mercy Wahito', 0733761132);
insert into manufacturer(names, contact_person, contact_phone)values('proctor en gamble' , 'Eric Chui' , 0710977688);

insert into supplier(names, contact_person, contact_phone)values('Home suppliers' , 'Henry Bii' , 0723655679);
insert into supplier(names, contact_person, contact_phone)values('Uptown inc' , 'Kastro Ihiga' , 0710311290);
insert into supplier(names, contact_person, contact_phone)values('Kindaruma', 'Patel Dipay', 0722768409);
insert into supplier(names, contact_person, contact_phone)values('Juma en Sons', 'Kennedy Murage', 0722435462);
insert into supplier(names, contact_person, contact_phone)values('Feeder Mart' , 'George Chege,' , 0711543276);
insert into supplier(names, contact_person, contact_phone)values('Santa PRC', 'Violetta Mwende', 0719651784);

insert into product(barcode, name, manufacturer , category, flavor, package, description )values(586286865868875, 'Afia', 5, 14, 3, 'plastic bottle' , '500 ml package');
insert into product(barcode, name, manufacturer , category, flavor, package, description )values(785468574583255, 'Rina', 1, 3, 1, 'plastic bottle' , '500 ml package');
insert into product(barcode, name, manufacturer , category, flavor, package, description)values(468766854865524, 'Rina', 1, 3, 1, 'plastic bottle' , '1000 ml package');



