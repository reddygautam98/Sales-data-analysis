SELECT pr.Category, SUM(s.Amount) AS TotalRevenue
FROM Sales s
JOIN Product pr ON s.PID = pr.PID
GROUP BY pr.Category
ORDER BY TotalRevenue DESC
LIMIT 1;
