create database ShopDB;
use ShopDB;

create table Products (
	ID int auto_increment,
    Name varchar(50),
    Description varchar(100),
    Price int,
    WarehouseAmount int,
    primary key (ID)
);

create table Customers (
	ID int auto_increment,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50),
    Address varchar(100),
    primary key (ID)
);

create table Orders (
	ID int auto_increment,
    CustomerID int,
    Date date,
    primary key (ID),
    foreign key (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

create table OrderItems (
	ID int auto_increment,
    OrderID int,
    ProductID int,
    primary key (ID),
	foreign key (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    foreign key (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);