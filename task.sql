CREATE DATABASE `ShopDB`;

USE `ShopDB`;

CREATE table Products(
	ID INT AUTO_INCREMENT,
	Name VARCHAR(50),
	Description VARCHAR(100),
	Price int,
	WarehouseAmount int,
	PRIMARY KEY (ID)
);

CREATE table Customers(
	ID INT AUTO_INCREMENT,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(50),
	Address VARCHAR(100),
	PRIMARY KEY (ID)
);

CREATE table Orders(
	ID INT AUTO_INCREMENT,
	CustomerID INT NULL,
	Date DATE,
	PRIMARY KEY (ID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

CREATE table OrderItems(
	ID INT AUTO_INCREMENT,
	OrderID INT NULL,
	ProductID INT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
	FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);

