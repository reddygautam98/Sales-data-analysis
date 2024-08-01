SELECT g.Region, p.Product_name, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN Geo g ON s.GeoID = g.GeoID
JOIN Product p ON s.PID = p.PID
GROUP BY g.Region, p.Product_name
ORDER BY g.Region, TotalSales DESC;
