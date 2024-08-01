SELECT SUM(p.Cost_per_box * s.Box) AS TotalCost, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN Product p ON s.PID = p.PID;
