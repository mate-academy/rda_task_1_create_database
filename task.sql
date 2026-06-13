CREATE DATABASE ShopDB;
USE ShopDB;
CREATE TABLE Products (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(50),
    Price INT,
    WarehouseAmount INT,
    PRIMARY KEY (ProductsID)
);
CREATE TABLE Customers (
    ID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(50),
    PRIMARY KEY (CustomersID)
);
CREATE TABLE Orders (
    ID INT AUTO_INCREMENT,
    CustomerID INT,
    Date DATE,
    PRIMARY KEY (OrdersID),
    FOREIGN KEY (CustomerID) ON DELETE SET NULL
        REFERENCES Customers(CustomerID)
);
CREATE TABLE OrderItems (
    ID INT AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    PRIMARY KEY (OrderItemsID),
    FOREIGN KEY (OrderID) ON DELETE SET NULL
        REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) ON DELETE SET NULL
        REFERENCES Products(ProductID)
);
