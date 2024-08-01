SELECT sp.Location, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN People sp ON s.SPID = sp.SPID
GROUP BY sp.Location
ORDER BY TotalSales DESC
LIMIT 1;
