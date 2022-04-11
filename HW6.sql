CREATE DATABASE Store2;
USE Store2;
CREATE TABLE Item (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    name varchar(15),
    val tinyint,
    price float,
    PRIMARY KEY (id)
);
CREATE TABLE Receipt (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    inv_id int,
    quantity tinyint,
    inv_price float,
    PRIMARY KEY (id),
    FOREIGN KEY (inv_id) REFERENCES Item(id)
);
CREATE TABLE Orders (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    lastname varchar(15),
    inventory_id int,
    receipt_id int,
    FOREIGN KEY (inventory_id) REFERENCES Item(id),
    FOREIGN KEY (receipt_id) REFERENCES Receipt(id)
);

insert into Item (name, val, price) values ('Duck', 10, 9.99);
insert into Item (name, val, price) values ('Car', 4, 4.99);
insert into Item (name, val, price) values ('Egg', 23, .99);

insert into Receipt (inv_id, quantity, inv_price) values (2, 2, 9.98);
insert into Receipt (inv_id, quantity, inv_price) values (3, 3, 3.97);
insert into Receipt (inv_id, quantity, inv_price) values (1, 2, 19.98);

insert into Orders (lastname, inventory_id, receipt_id) values ('Cook', 2, 1);
insert into Orders (lastname, inventory_id, receipt_id) values ('Baker', 3, 2);
insert into Orders (lastname, inventory_id, receipt_id) values ('Smith', 1, 3);

select * from Item;
select * from Receipt;
select * from Orders;
select name, price and val > 9 from Item;
select id, inv_id and inv_price > 9.99 from Receipt;
select lastname = 'Baker' from Orders;