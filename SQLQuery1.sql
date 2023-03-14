drop table Period
create table Period (periodID int primary key, value int)
INSERT INTO Period  VALUES 
(1, 10),
(3, 10),
(5, 20),
(6, 20),
(7, 10),
(9, 40),
(10, 40);
SELECT  periodID, 
LAG(periodID) OVER(ORDER BY periodID) prev_periodID, 
LEAD(periodID) OVER(ORDER BY periodID) next_periodID
FROM Period;
drop table Period
create table Period (periodID int primary key, value int)
INSERT INTO Period  VALUES 
(1, 10),
(3, 10),
(5, 20),
(6, 20),
(7, 10),
(9, 40),
(10, 40);
SELECT  iif((value-LAG(value) OVER(ORDER BY value))<>0, periodID, null) as periodID
FROM Period;