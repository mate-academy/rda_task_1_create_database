CREATE DATABASE ShopDB;
USE ShopDB;
CREATE TABLE Products (
	ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(100),
    Price INT,
    WarehouseAmount INT,
    PRIMARY KEY (ID)
);
CREATE TABLE Customers (
	ID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Addres VARCHAR(50),
    PRIMARY KEY (ID)
);
CREATE TABLE Orders (
	ID INT AUTO_INCREMENT,
    CustomerID INT,
    Date DATE,
    PRIMARY KEY (ID)
);
CREATE TABLE OrderItems (
	ID INT AUTO_INCREMENT,
    OderID INT,
    ProductID INT,
    PRIMARY KEY (ID)
);