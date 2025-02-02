# Write your SQL code for the database creation here. Good luck! 
CREATE DATABASE ShopDB;

USE ShopDB;

CREATE TABLE Products(
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(50),
    Price INT,
    WareHouseAmount INT,
    PRIMARY KEY(ID)
);

CREATE TABLE Customers(
    ID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Adress VARCHAR(50),
    PRIMARY KEY (ID)
);

    ID INT AUTO_INCREMENT,
    CustomerID INT,
    Date DATE,
    PRIMARY KEY (ID)
);

CREATE TABLE OrderItems (
    ID INT AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    PRIMARY KEY (ID)
);

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) REFERENCES Customers (ID) ON DELETE SET NULL;

ALTER TABLE OrderItems
ADD CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (OrderID) REFERENCES Orders (ID) ON DELETE SET NULL;

ALTER TABLE OrderItems
ADD CONSTRAINT FK_OrderItems_Products FOREIGN KEY (ProductID) REFERENCES Products (ID) ON DELETE SET NULL;