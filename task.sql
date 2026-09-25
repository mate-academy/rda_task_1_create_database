CREATE database ShopDB;
use ShopDB;

CREATE table Products (
	ID int auto_increment,
	Name varchar(50),
	Description varchar(100),
	Price int,
	WarehouseAmount int,
	Primary KEY (ID)
);

CREATE table Customers (
	ID int auto_increment,
	FirstName varchar(50),
	LastName varchar(50),
	Email varchar(50),
	Address varchar(100),
	Primary KEY (ID)
);

CREATE table Orders (
	ID int auto_increment,
	CustomerID int,
	Date date,
	Primary KEY (ID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

CREATE table OrderItems (
	ID int auto_increment,
	OrderID int,
	ProductID int,
	Primary KEY (ID),
	FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
	FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);

