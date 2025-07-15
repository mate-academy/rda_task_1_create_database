-- SQL скрипт для створення бази даних інтернет-магазину
-- Завдання: створити базу даних ShopDB з таблицями Products, Customers, Orders, OrderItems

-- 1. Створення бази даних ShopDB
CREATE DATABASE IF NOT EXISTS ShopDB;

-- Використовуємо створену базу даних
USE ShopDB;

-- 2. Створення таблиці Products
CREATE TABLE Products (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(100),
    Price DECIMAL(10, 2) NOT NULL,
    WarehouseAmount INT NOT NULL DEFAULT 0
);

-- 3. Створення таблиці Customers
CREATE TABLE Customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Address VARCHAR(100)
);

-- 4. Створення таблиці Orders
CREATE TABLE Orders (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Date DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);

-- 5. Створення таблиці OrderItems
CREATE TABLE OrderItems (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);