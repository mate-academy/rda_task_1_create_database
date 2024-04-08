# Write your SQL code for the database creation here. Good luck! 

CREATE DATABASE ShopDB;

USE ShopDB;

CREATE TABLE Products (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(100),
    Price INT,
    WarehouseAmount INT,
    HireDate DATE,
    PRIMARY KEY (ID)
);

CREATE TABLE Customers (
    ID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(100),
    PRIMARY KEY (ID)
);

CREATE TABLE Orders (
    ID INT AUTO_INCREMENT,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE CASCADE,
    Date DATE,
    PRIMARY KEY (ID)
);

CREATE TABLE OrderItems (
    ID INT AUTO_INCREMENT,
    OrderID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE CASCADE,
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE CASCADE,
    PRIMARY KEY (ID)
);
