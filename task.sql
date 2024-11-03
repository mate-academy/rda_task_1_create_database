CREATE DATABASE IF NOT EXISTS ShopDB;

USE ShopDB;

CREATE TABLE `Order`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` BIGINT NOT NULL,
    `date` DATE NOT NULL
);
CREATE TABLE `Order_Items`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `order_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL
);
CREATE TABLE `Product`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `description` TEXT NOT NULL,
    `price` INT NOT NULL,
    `warehouse_amount` BIGINT NOT NULL
);
CREATE TABLE `Customer`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL
);
ALTER TABLE
    `Order` ADD CONSTRAINT `order_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `Customer`(`id`);
ALTER TABLE
    `Order_Items` ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY(`order_id`) REFERENCES `Order`(`id`);
ALTER TABLE
    `Order_Items` ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `Product`(`id`);
