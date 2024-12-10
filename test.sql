# check if database exists 
USE ShopDB; 

# check if table "Products" exists, all required columnts are in place, and have correct types 
INSERT INTO Products (Name, Description, Price, WarehouseAmount)
	VALUES ('Product', 'Product Desctiption', 5, 42);

# check if table "Customers" exists, all required columns are in place, and have correct types
INSERT INTO Customers (FirstName, LastName, Email, Address)
	VALUES ('John', 'Dou', 'j@dou.ua', 'far, far away');

# check if table "Orders" exists, all required columns are in place, and have correct types
INSERT INTO Orders (CustomerID, Date)
	VALUES (1, '2023-01-01');

# check if table "OrderItems" exists, all required columns are in place, and have correct types
INSERT INTO OrderItems (OrderID, ProductID)
	VALUES (1, 1);
