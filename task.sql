CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Products(
    ID int auto_increment PRIMARY KEY,
    Name varchar(100),
    Description varchar(100),
    Price int,
    WarehouseAmount int
);

CREATE TABLE Customers(
    ID int auto_increment PRIMARY KEY,
    FirstName varchar(100),
    LastName varchar(100),
    Email varchar(100),
    Address varchar(100)
);

CREATE TABLE Orders(
    ID int auto_increment PRIMARY KEY,
    CustomerID int,
    Date Date,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

CREATE TABLE OrderItems(
    ID int auto_increment PRIMARY KEY,
    OrderID int,   
    ProductID int,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);