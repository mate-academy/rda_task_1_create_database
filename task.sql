# Write your SQL code for the database creation here. Good luck! 
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
      foreign key (CustomerID) references Customers(ID) on delete set null
);
      create table OrderItems (
      ID int auto_increment,
      OrderID int, 
      ProductID int,
      primary key (ID),
      foreign key (OrderID) references Orders(ID) on delete set null,
      foreign key (ProductID) references Products(ID) on delete set null
);
