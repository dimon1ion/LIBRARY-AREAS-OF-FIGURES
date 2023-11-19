use TestTask;

CREATE TABLE Products (
    ProductID INT IDENTITY(1, 1) PRIMARY KEY,
    ProductName NVARCHAR(255) NOT NULL
);

INSERT INTO Products (ProductName) VALUES ('�������1');
INSERT INTO Products (ProductName) VALUES ('�������2');
INSERT INTO Products (ProductName) VALUES ('�������3');


CREATE TABLE Categories (
    CategoryID INT IDENTITY(1, 1) PRIMARY KEY,
    CategoryName NVARCHAR(255) NOT NULL
);

INSERT INTO Categories (CategoryName) VALUES ('���������1');
INSERT INTO Categories (CategoryName) VALUES ('���������2');
INSERT INTO Categories (CategoryName) VALUES ('���������3');

CREATE TABLE ProductsCategories (
    ProductID INT FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    CategoryID INT FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    PRIMARY KEY (ProductID, CategoryID),
);

INSERT INTO ProductsCategories (ProductID, CategoryID) VALUES (1, 1); -- �������1 --> ���������1
INSERT INTO ProductsCategories (ProductID, CategoryID) VALUES (1, 2); -- �������1 --> ���������2
INSERT INTO ProductsCategories (ProductID, CategoryID) VALUES (2, 2); -- �������2 --> ���������2

SELECT
    Products.ProductName,
    ISNULL(Categories.CategoryName, '��� ���������') AS CategoryName
FROM
    Products
LEFT JOIN
    ProductsCategories ON Products.ProductID = ProductsCategories.ProductID
LEFT JOIN
    Categories ON ProductsCategories.CategoryID = Categories.CategoryID;

--DROP TABLE ProductsCategories
--DROP TABLE Products
--DROP TABLE Categories