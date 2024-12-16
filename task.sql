CREATE DATABASE ShopDB;

USE ShopDB;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(50),
    Price DECIMAL(10,2),
    WarehouseAmount INT,
    PRIMARY KEY (ProductID)
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(50),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT,
    CustomerID INT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE SET NULL,
    Date DATE,
    PRIMARY KEY (OrderID)
);

CREATE TABLE OrderItems (
    OrderItemID INT AUTO_INCREMENT,
    OrderID INT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE SET NULL,
    ProductID INT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) ON DELETE SET NULL,
    PRIMARY KEY (OrderItemID)
);