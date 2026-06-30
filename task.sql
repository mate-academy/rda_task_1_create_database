CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Products (
    ID INT auto_increment,
    Name VARCHAR(50),
    Description VARCHAR(100),
    Price INT,
    WarehouseAmount INT,
    primary key (ID)
);

CREATE TABLE Customers (
    ID INT auto_increment,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(50),
    primary key (ID)
);

CREATE TABLE Orders (
    ID INT auto_increment,
    CustomerID INT,
    Date DATE,
    primary key (ID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

CREATE TABLE OrderItems (
    ID INT auto_increment,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL,
    primary key (ID)
);