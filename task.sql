# Write your SQL code for the database creation here. Good luck! 

-- 1. Create the ShopDB database
CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

-- 2. Create Products table
CREATE TABLE IF NOT EXISTS Products (
    ID              INT            NOT NULL AUTO_INCREMENT,
    Name            VARCHAR(50)    NOT NULL,
    Description     VARCHAR(100)   NOT NULL,
    Price           INT            NOT NULL,
    WarehouseAmount INT            NOT NULL,
    PRIMARY KEY (ID)
);

-- 3. Create Customers table
CREATE TABLE IF NOT EXISTS Customers (
    ID          INT           NOT NULL AUTO_INCREMENT,
    FirstName   VARCHAR(50)   NOT NULL,
    LastName    VARCHAR(50)   NOT NULL,
    Email       VARCHAR(100)  NOT NULL,
    Address     VARCHAR(100)  NOT NULL,
    PRIMARY KEY (ID)
);

-- 4. Create Orders table  (FK → Customers)
CREATE TABLE IF NOT EXISTS Orders (
    ID          INT     NOT NULL AUTO_INCREMENT,
    CustomerID  INT,
    Date        DATE    NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

-- 5. Create OrderItems table  (FK → Orders, FK → Products)
CREATE TABLE IF NOT EXISTS OrderItems (
    ID          INT  NOT NULL AUTO_INCREMENT,
    OrderID     INT,
    ProductID   INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (OrderID)   REFERENCES Orders(ID)   ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);
