DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products (
id INT NOT NULL AUTO INCREMENT,
product_name VARCHAR(50) NULL,
department_name VARCHAR (50) NULL,
price DECIMAL(10,2) NULL,
stock_quantity INT NULL,
PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("headphones", "electronics", 19.99, 12), ("microphone", "electronics", 35.99, 5), ("television", "electronics", 499.99, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("knife set", "kitchen", 36.99, 15), ("microwave", "kitchen", 78.99, 7), ("silverware set", "kitchen", 9.99, 23);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("monster manual", "games", 29.99, 29), ("dungeon master guide", "games", 29.99, 38), ("player's handbook", "games", 29.99, 23);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("dog collar", "pets", 12.95, 7);
