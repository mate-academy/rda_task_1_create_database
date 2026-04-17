create database ShopDB;
USE ShopDB;
CREATE TABLE Products(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(100),
    Price INT,
    WarehouseAmount INT
);
CREATE TABLE Customers(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(100)
);
CREATE TABLE Orders(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Date DATE,
    foreign key (CustomerID) references Customers(ID) on delete set null
);
CREATE TABLE OrderItems(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    foreign key (OrderID) references Orders(ID) on delete set null,
    foreign key (ProductID) references Products(ID) on delete set null
);