SELECT p.Size, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN Product p ON s.PID = p.PID
GROUP BY p.Size;
