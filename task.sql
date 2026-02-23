# Write your SQL code for the database creation here. Good luck! 

create database ShopDB;

use ShopDB;

CREATE TABLE Products (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Description TEXT,
  Price DECIMAL(10, 2) NOT NULL,
  WarehouseAmount INT NOT NULL
);

CREATE TABLE Customers (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  Address TEXT
);

CREATE TABLE Orders (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  CustomerID INT NOT NULL,
  Date DATE NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(ID)
);

CREATE TABLE OrderItems (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  OrderID INT NOT NULL,
  ProductID INT NOT NULL,
  FOREIGN KEY (OrderID) REFERENCES Orders(ID),
  FOREIGN KEY (ProductID) REFERENCES Products(ID)
);
