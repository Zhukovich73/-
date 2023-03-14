
drop table OT
drop table TST
create table OT (Identity_Num int primary key, Order_ID int)
create table TST (Code int primary key, Order_ID int, Quantity int)
INSERT INTO OT  VALUES 
(1, 1),
(2, 1),
(3, 3),
(4, 2),
(5, 2),
(6, 2),
(7, 6);
INSERT INTO TST  VALUES 
(1, 1, 100),
(2, 1, 150),
(3, 2, 250),
(4, 2, 250),
(5, 2, 260),
(6, 3, 325),
(7, 4, 444);
SELECT   TST.Order_ID, Quantity
FROM TST
WHERE TST.Order_ID IN (SELECT Order_ID FROM OT); 
