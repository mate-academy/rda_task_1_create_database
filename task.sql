CREATE DATABASE ShopDB;

USE ShopDB;


CREATE TABLE Products (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(100),
    Price INT,
    WarehouseAmount INT,
    PRIMARY KEY (ID)
);


CREATE TABLE Customers (
    ID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(100),
    PRIMARY KEY (ID)
);


CREATE TABLE Orders (
    ID INT AUTO_INCREMENT,
    CustomerID INT,
    Date DATE,
    PRIMARY KEY (ID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);


CREATE TABLE OrderItems (
    ID INT AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);




# DESCRIBE OrderItems;
# INSERT INTO Employees (FirstName, LastName, Position, HireDate, Department)
# VALUES ('John', 'Doe', 'Manager', '2023-01-10', 'Marketing'),
#       ('Jane', 'Dough', 'Developer', '2023-02-20', 'IT');
# SELECT * FROM Employees;