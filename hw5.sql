USE STORE;
CREATE TABLE Items(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    title varchar(30) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE orders_items_association(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    order_id int NOT NULL,
    items_id int NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Items (title) VALUES ('donut');
INSERT INTO Items (title) VALUES ('pie');
INSERT INTO Items (title) VALUES ('cake');
INSERT INTO Items (title) VALUES ('ice cream');

SELECT * FROM Orders;
SELECT * FROM Items;
SELECT * FROM orders_items_association;


INSERT INTO orders_items_association (order_id, items_id) VALUES (4, 4);
INSERT INTO orders_items_association (order_id, items_id) VALUES (2, 1);
INSERT INTO orders_items_association (order_id, items_id) VALUES (3, 2);
INSERT INTO orders_items_association (order_id, items_id) VALUES (1, 3);