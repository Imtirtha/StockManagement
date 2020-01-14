SELECT SUM(BQTY)-(SUM(SQTY)) Quantity FROM (
SELECT SUM(Quantity) BQTY,0 SQTY  FROM Expiry WHERE Type='In' AND ItemId='2' AND UserId'1'
UNION
SELECT 0 BQTY,SUM(Quantity) SQTY  FROM Expiry WHERE Type='Out' AND ItemId='2' AND UserId='1'
) A