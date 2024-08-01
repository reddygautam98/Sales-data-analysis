SELECT sp.Salesperson_name, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN People sp ON s.SPID = sp.SPID
GROUP BY sp.Salesperson_name
ORDER BY TotalSales DESC
LIMIT 5;
