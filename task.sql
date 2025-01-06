CREATE DATABASE ShopDB;

CREATE TABLE Products (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name varchar(50),
    Description varchar(50),
    Price INT,
    WarehouseAmount INT
);

CREATE TABLE Customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50),
    Address varchar(100)
);

CREATE TABLE Orders (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Date DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID)
                    ON DELETE SET NULL
);

CREATE TABLE OrderItems (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID)
                        ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID)
                        ON DELETE SET NULL
);