-- 1. Создаем базу данных
CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

-- 2. Таблица продуктов
CREATE TABLE Products (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(255),
    Price DECIMAL(10,2) NOT NULL,
    WarehouseAmount INT NOT NULL
);

-- 3. Таблица клиентов
CREATE TABLE Customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(100)
);

-- 4. Таблица заказов
CREATE TABLE Orders (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Date DATE NOT NULL,
    CONSTRAINT fk_orders_customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(ID)
        ON DELETE SET NULL
);

-- 5. Таблица позиций заказа
CREATE TABLE OrderItems (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    CONSTRAINT fk_orderitems_orders
        FOREIGN KEY (OrderID)
        REFERENCES Orders(ID)
        ON DELETE SET NULL,
    CONSTRAINT fk_orderitems_products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ID)
        ON DELETE SET NULL
);
