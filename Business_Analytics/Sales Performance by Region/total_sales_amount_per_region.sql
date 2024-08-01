SELECT g.Region, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN Geo g ON s.GeoID = g.GeoID
GROUP BY g.Region;
