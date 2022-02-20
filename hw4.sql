CREATE DATABASE Store;
USE Store;
CREATE TABLE Customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    PRIMARY KEY (id)
);
CREATE TABLE Orders (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES Customers(id)
);
INSERT INTO Customers (firstname, lastname) VALUES ('Bob','John');
INSERT INTO Customers (firstname, lastname) VALUES ('Kim','John');
INSERT INTO Orders(product, cost, customerId) VALUES ('cake','13',1);
INSERT INTO Orders(product, cost, customerId) VALUES ('donut','2',1);
INSERT INTO Orders(product, cost, customerId) VALUES ('pie','9',2);
INSERT INTO Orders(product, cost, customerId) VALUES ('ice cream','6',2);
SELECT * from Orders;
SELECT * from Customers;