# Database for Online Shop

It's time to build a database for an online shop!

## Prerequisites

1. Install and configure a MySQL database server on a Virtual Machine, connect to it with the MySQL client.
2. Fork this repository.

## Requirements

Edit the `task.sql` file to create a SQL script for the online shop database. The script should complete the following actions on the database server: 

1. Create a database (schema) called `ShopDB`.
2. In the `ShopDB` database, create the following tables:
  - `Products`, which has the following columns: `ID`, `Name`, `Description`, `Price`, and `WarehouseAmount`.
  - `Customers`, which has the following columns: `ID`, `FirstName`, `LastName`, `Email`, and `Address`.
  - `Orders`, which has the following columns: `ID`, `CustomerID`, and `Date`.
  - `OrderItems`, which has the following columns: `ID`, `OrderID`, and `ProductID`.

💡 When creating the tables, take the following into account:

  - Use the appropriate data type for each column: `INT`, `DATE`, `VARCHAR(50)`, or `VARCHAR(100)`.
  - Use autoincrement for the primary keys.
  - Use construction `FOREIGN KEY (<column-name>) REFERENCES <referenced-table-name>(<referenced-column-name>) ON DELETE SET NULL` to connect related tables. The following tables are related: `Orders` and `Customers`, `OrderItems` and `Orders`, `OrderItems` and `Products`.


## How to Test Yourself


Just in case you want to test your script on your database before submitting a pull request, you can do it by performing the following actions:


1. Run the script you wrote in the `task.sql` on your database server.
2. Make sure all tables in the database are empty.
3. Run the `test.sql` script on your database. If the script execution is finished without errors, you are ready to submit a pull request.
