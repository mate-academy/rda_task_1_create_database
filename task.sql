# Write your SQL code for the database creation here. Good luck! 
CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Products (
	ID INT auto_increment,
    Name varchar(50),
    Description varchar(100),
    Price int,
    WarehouseAmount int,
    primary key (ID)
);
CREATE TABLE Customers (
	ID int auto_increment,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50),
    Address varchar(100),
    primary key (ID)
);
CREATE TABLE Orders (
	ID int auto_increment,
    CustomerID int,
    Date date,
	primary key (ID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);
CREATE TABLE OrderItems (
	ID int auto_increment,
    OrderID int,
    ProductID int,
    primary key (ID),
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
	FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);