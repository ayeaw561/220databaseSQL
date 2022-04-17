USE Store2;

SELECT * FROM Orders;

DELETE FROM Orders where id = 3;
SELECT * FROM Orders;
insert into Orders (lastname, inventory_id, receipt_id) values ('Smith', 1, 3);
SELECT * FROM Orders;

DELETE FROM Orders where id in (1,2,3);
SELECT * FROM Orders;

insert into Orders (lastname, inventory_id, receipt_id) values ('Cook', 2, 1);
insert into Orders (lastname, inventory_id, receipt_id) values ('Baker', 3, 2);
insert into Orders (lastname, inventory_id, receipt_id) values ('Smith', 1, 3);

SELECT Orders.lastname, Item.name FROM Orders INNER JOIN Item on Orders.inventory_id = Item.id;
SELECT Orders.lastname, Item.name FROM Orders INNER JOIN Item on Orders.inventory_id = Item.id where Item.price > 1;
SELECT Orders.lastname, Item.name FROM Orders INNER JOIN Item on Orders.inventory_id = Item.id where Orders.lastname = 'Cook'
