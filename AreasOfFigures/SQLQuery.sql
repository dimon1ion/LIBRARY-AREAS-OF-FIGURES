use TestTask;

CREATE TABLE Products (
    ProductID INT IDENTITY(1, 1) PRIMARY KEY,
    ProductName NVARCHAR(255) NOT NULL
);

INSERT INTO Products (ProductName) VALUES ('Продукт1');
INSERT INTO Products (ProductName) VALUES ('Продукт2');
INSERT INTO Products (ProductName) VALUES ('Продукт3');


CREATE TABLE Categories (
    CategoryID INT IDENTITY(1, 1) PRIMARY KEY,
    CategoryName NVARCHAR(255) NOT NULL
);

INSERT INTO Categories (CategoryName) VALUES ('Категория1');
INSERT INTO Categories (CategoryName) VALUES ('Категория2');
INSERT INTO Categories (CategoryName) VALUES ('Категория3');

CREATE TABLE ProductsCategories (
    ProductID INT FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    CategoryID INT FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    PRIMARY KEY (ProductID, CategoryID),
);

INSERT INTO ProductsCategories (ProductID, CategoryID) VALUES (1, 1); -- Продукт1 --> Категория1
INSERT INTO ProductsCategories (ProductID, CategoryID) VALUES (1, 2); -- Продукт1 --> Категория2
INSERT INTO ProductsCategories (ProductID, CategoryID) VALUES (2, 2); -- Продукт2 --> Категория2

SELECT
    Products.ProductName,
    ISNULL(Categories.CategoryName, 'Без категории') AS CategoryName
FROM
    Products
LEFT JOIN
    ProductsCategories ON Products.ProductID = ProductsCategories.ProductID
LEFT JOIN
    Categories ON ProductsCategories.CategoryID = Categories.CategoryID;

--DROP TABLE ProductsCategories
--DROP TABLE Products
--DROP TABLE Categories