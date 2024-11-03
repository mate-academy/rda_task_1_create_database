CREATE DATABASE IF NOT EXISTS ShopDB;

USE ShopDB;

CREATE TABLE `Orders`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` INT NOT NULL,
    `date` DATE NOT NULL
);
CREATE TABLE `OrderItems`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `order_id` INT NOT NULL,
    `product_id` INT NOT NULL
);
CREATE TABLE `Products`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `description` VARCHAR(100) NOT NULL,
    `price` INT NOT NULL,
    `warehouse_amount` INT NOT NULL
);
CREATE TABLE `Customers`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL
);
ALTER TABLE
    `Orders` ADD CONSTRAINT `order_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `Customers`(`id`);
ALTER TABLE
    `OrderItems` ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY(`order_id`) REFERENCES `Orders`(`id`);
ALTER TABLE
    `OrderItems` ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `Products`(`id`);
