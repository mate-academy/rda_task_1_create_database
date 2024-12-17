CREATE DATABASE ShopDB;

USE ShopDB;

CREATE TABLE Products (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description TEXT,
    Price INT,
    WarehouseAmount INT,
    PRIMARY KEY (ID)
);

CREATE TABLE Customers (
    ID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(255),
    PRIMARY KEY (ID)
);

CREATE TABLE Orders (
    OrdersID INT AUTO_INCREMENT,
    CustomerID INT,
    Date DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL,
    PRIMARY KEY (OrdersID)
);

CREATE TABLE OrderItems (
    OrderItemsID INT AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrdersID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL,
    PRIMARY KEY (OrderItemsID)
);
