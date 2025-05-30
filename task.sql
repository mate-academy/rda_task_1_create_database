create database ShopDB;
use ShopDB;

create table Products (
	ID  int auto_increment,
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
    Email varchar(100),
    Address varchar(100),
    primary key (ID)
);

create table Orders (
	ID int auto_increment,
    CustomerID int,
    foreign key (CustomerID) references Customers(ID) on delete set null,
    Date date,
    primary key (ID)
);

create table OrderItems (
	ID int auto_increment,
    OrderID int,
    ProductID int,
    foreign key (OrderID) references Orders(ID) on delete set null,
    foreign key (ProductID) references Products(ID) on delete set null,
    primary key (ID)
);
