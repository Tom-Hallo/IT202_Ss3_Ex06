CREATE TABLE PRODUCTS (
	productID VARCHAR(4) PRIMARY KEY,
    prdName varchar(255) NOT NULL,
    size char(1) NOT NULL,
    price INT
);

INSERT INTO PRODUCTS (productID,prdName,size,price)
VALUES (
	("P01", "Áo sơ mi trắng", "L", 250000),
	("P02", "Quần Jean xanh", "M", 450000),
	("P03", "Áo thun Basic", "XL", 150000),
	("P04", "Áo hoodie", NULL, -200000)
);

UPDATE PRODCUTS SET price = 400000
WHERE productID = "P02";

UPDATE PRODUCTS SET price = price * 1.1;

DELETE FROM PRODUCTS WHERE productID = "P03";

SELECT * FROM PRODUCTS;
SELECT prdName , size FROM PRODUCTS;
SELECT * FROM PRODUCTS WHERE price > 300000;
