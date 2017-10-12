CREATE TABLE products(
	item_id INT PRIMARY KEY AUTO_INCREMENT,
	product_name VARCHAR(100) NOT NULL,
	department_name VARCHAR(100) NOT NULL,
	price VARCHAR(100) NOT NULL,
	stock_quantity VARCHAR(100) NOT NULL
);

INSERT INTO products (product_name, department_name, price, stock_quantity) values ('grapes', 'fruit', 10, 100);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('apples', 'fruit', 1, 40);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('pears', 'fruit', 2, 6);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('mangos','fruit', 3, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('oranges','fruit', 2, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('asparagus', 'veggie', 5, 80);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('broccoli', 'veggie', 5, 50);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('celery', 'veggie', 3, 34);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('corn', 'veggie', 2, 45);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('endive', 'veggie', 4, 66);