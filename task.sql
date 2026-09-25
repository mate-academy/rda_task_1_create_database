CREATE DATABASE IN NOT EXISTS ShopDB;

use ShopDB;

create table Products (
      ID INT AUTO_INCREMENT PRIMARY KEY;
      Name VARCHAR(50),
      Description VARCHAR(100),
      Price int,
      WarehouseAmount int
);

create table Customers (
      ID INT AUTO_INCREMENT PRIMARY KEY,
      FirstName VARCHAR(50),
      LastName Varchar(50),
      Email varchar(100),
      Address varchar(100)
);

create table Orders (
      ID INT AUTO_INCREMENT PRIMARY KEY,
      CustomerID INT,
      Date DATE,
      Foreign KEY (CustomerID)
          REFERENCES Customers(ID)
          ON DELETE SET NULL
);

create table OrderItems (
      ID INT AUTO_INCREMENT PRIMARY KEY,
      OrderID INT,
      ProductID INT,
      FOREIGN KEY (OrderID)
          REFERENCES Orders(ID)
          ON DELETE SET NULL,
      FOREIGN KEY (ProductID)
          REFERENCES Products(ID)
          ON DELETE SET NULL
);



