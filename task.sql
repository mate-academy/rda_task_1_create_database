-- Create the database
CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

-- Create Products table
CREATE TABLE Products (
    ID              INT             NOT NULL AUTO_INCREMENT,
    Name            VARCHAR(50)     NOT NULL,
    Description     VARCHAR(100),
    Price           INT             NOT NULL,
    WarehouseAmount INT             NOT NULL,
    PRIMARY KEY (ID)
);

-- Create Customers table
CREATE TABLE Customers (
    ID              INT             NOT NULL AUTO_INCREMENT,
    FirstName       VARCHAR(50)     NOT NULL,
    LastName        VARCHAR(50)     NOT NULL,
    Email           VARCHAR(100),
    Address         VARCHAR(100),
    PRIMARY KEY (ID)
);

-- Create Orders table
CREATE TABLE Orders (
    ID              INT             NOT NULL AUTO_INCREMENT,
    CustomerID      INT,
    Date            DATE            NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

-- Create OrderItems table
CREATE TABLE OrderItems (
    ID              INT             NOT NULL AUTO_INCREMENT,
    OrderID         INT,
    ProductID       INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (OrderID)   REFERENCES Orders(ID)   ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);
