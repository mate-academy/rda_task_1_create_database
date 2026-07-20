USE ShopDB;

INSERT INTO Products (Name, Description, Price, WarehouseAmount)
	VALUES ('Product', 'Product Desctiption', 5, 42);

INSERT INTO Customers (FirstName, LastName, Email, Address)
	VALUES ('John', 'Dou', 'j@dou.ua', 'far, far away');

INSERT INTO Orders (CustomerID, Date)
	VALUES (1, '2023-01-01');

INSERT INTO OrderItems (OrderID, ProductID)
	VALUES (1, 1);