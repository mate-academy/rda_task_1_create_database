CREATE DATABASE ShopDB;
USE ShopDB;
CREATE TABLE Products (
    ProductsID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(50),
    Price INT,
    WarehouseAmount INT,
    PRIMARY KEY (ProductsID)
);
CREATE TABLE Customers (
    CustomersID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(50),
    PRIMARY KEY (CustomersID)
);
CREATE TABLE Orders (
    OrdersID INT AUTO_INCREMENT,
    CustomersID INT,
    Date DATE,
    PRIMARY KEY (OrdersID),
    FOREIGN KEY (CustomersID)
        REFERENCES Customers(CustomersID)
);
CREATE TABLE OrderItems (
    OrderItemsID INT AUTO_INCREMENT,
    OrdersID INT,
    ProductsID INT,
    PRIMARY KEY (OrderItemsID),
    FOREIGN KEY (OrdersID)
        REFERENCES Orders(OrdersID),
    FOREIGN KEY (ProductsID)
        REFERENCES Products(ProductsID)
);
