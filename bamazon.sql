DROP DATABASE IF EXISTS bamazon_db; 
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	itemid integer auto_increment not null,
    productname varchar(45) not null,
    departmentname varchar(45) not null,
    price decimal(10,2) not null,
    stockquantity integer(10) not null,
    primary key (itemid)
);

INSERT INTO products VALUES
(1,"Supreme Toothbrush", "toothbrush",40.00, 2),
(2,"Air Fear of God 1", "shoes",600.01, 3),
(3,"Supreme Band-Aid", "band-aid",111.11, 4),
(4,"Bearbrick x Bape x Mika N", "Collectable",1999.00, 4),
(5,"LV Money Clip", "money clip",313.53, 5),
(6,"LV Keepall Bandouliere", "bag",4900.00, 11),
(7,"Adidas Yeezy Boost 700 Magnet", "shoes",550.00, 8),
(8,"Adidas NMD Human Race", "shoes",307.00, 3),
(9,"Air Presto Off-White Black", "shoes", 892.05, 2),
(10,"Air Max 1 Parra Amsterdam", "shoes",9000.00, 1);

SELECT * FROM products;



