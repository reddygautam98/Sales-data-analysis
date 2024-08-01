SELECT pr.Product_name, SUM(s.Amount) AS TotalRevenue, AVG(s.Amount) AS AvgSalesAmount
FROM Sales s
JOIN Product pr ON s.PID = pr.PID
GROUP BY pr.Product_name
ORDER BY TotalRevenue DESC
LIMIT 5;
