CREATE DATABASE ShopDB;

USE ShopDB;

CREATE TABLE Products (
    ID INT auto_increment,
    Name varchar(50),
    Description varchar(50),
    Price decimal(10,2),
    WarehouseAmount varchar(50),
    primary key (ID)
);

CREATE TABLE Customers (
    ID INT auto_increment,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50),
    Address varchar(100),
    primary key (ID)
);

CREATE TABLE Orders (
    ID INT auto_increment,
    CustomerID INT,
    Date DATE,
    primary key (ID),
    foreign key (CustomerID) references Customers(ID) on delete set null
);

CREATE TABLE OrderItems (
    ID INT auto_increment,
    OrderID INT,
    ProductID INT,
    primary key (ID),
    foreign key (OrderID) references Orders(ID) on delete set null,
    foreign key (ProductID) references Products(ID) on delete set null
);