CREATE DATABASE TEST;
USE TEST;

DROP TABLE PRODUCTS;
CREATE TABLE PRODUCTS (
	productID VARCHAR(4) PRIMARY KEY,
    prdName varchar(255) NOT NULL,
    size ENUM ('L','M','XL'),
    price INT
);

INSERT INTO PRODUCTS (productID,prdName,size,price)
VALUES
	("P01", "Áo sơ mi trắng", "L", 250000),
	("P02", "Quần Jean xanh", "M", 450000),
	("P03", "Áo thun Basic", "XL", 150000),
	("P04", "Áo hoodie", NULL, -200000),
    ("P05", "Áo thun ", "XL", 1500000),
    ("P06", "Áo thun Nike", "L", 30000),
    ("P07", "Giày Basic", "M", 250000),
    ("P08", "Quần Nike", "L", 450000),
    ("P09", "Áo Basic", "XL", 50000),
    ("P10", "Áo Common","L", 25000);
    
UPDATE PRODUCTS SET price = 400000
WHERE productID = "P02";

SET SQL_SAFE_UPDATES = 0;
UPDATE PRODUCTS SET price = price * 1.1;

DELETE FROM PRODUCTS WHERE productID = "P03";
DELETE FROM PRODUCTS WHERE size = NULL OR price < 0;

SELECT * FROM PRODUCTS;
SELECT prdName , size FROM PRODUCTS;
SELECT * FROM PRODUCTS WHERE price > 300000;
