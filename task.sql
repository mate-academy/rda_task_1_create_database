# Write your SQL code for the database creation here. Good luck! 
-- Create the ShopDB database
CREATE DATABASE ShopDB;

-- Use the ShopDB database
USE ShopDB;

-- Create the Products table
CREATE TABLE Products (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(100),
    Price INT NOT NULL,
    WarehouseAmount INT NOT NULL
);

-- Create the Customers table
CREATE TABLE Customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Address VARCHAR(100)
);

-- Create the Orders table
CREATE TABLE Orders (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NULL,
    Date DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

-- Create the OrderItems table
CREATE TABLE OrderItems (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NULL,
    ProductID INT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);