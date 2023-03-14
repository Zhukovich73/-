
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
SELECT lt.* FROM Period lt
LEFT JOIN (
SELECT t1.PeriodID, t2.Value FROM 
(SELECT
LAG(t.PeriodID) OVER(ORDER BY t.PeriodID) PrevPeriod
, PeriodID
FROM Period t) t1
LEFT JOIN Period t2 ON t1.PrevPeriod = t2.PeriodID
) rt ON lt.PeriodID = rt.PeriodID
WHERE lt.Value=rt.Value 
;