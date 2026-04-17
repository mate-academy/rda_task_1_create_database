use TestDB;
CREATE TABLE Products(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    WarehouseAmount INT NOT NULL
);
CREATE TABLE Customers(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(100)
);
CREATE TABLE Orders(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Date DATE,
    foreign key (CustomerID) references Customers(ID) on delete set null
);
CREATE TABLE OrderItems(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    foreign key (OrderID) references Orders(ID) on delete set null,
    foreign key (ProductID) references Products(ID) on delete set null
);