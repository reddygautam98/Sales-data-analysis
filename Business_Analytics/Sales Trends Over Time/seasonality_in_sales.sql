SELECT DATE_TRUNC('month', s.SaleDate) AS Month, SUM(s.Amount) AS TotalSales
FROM Sales s
GROUP BY Month
ORDER BY Month;
