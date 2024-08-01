SELECT g.Region, SUM(s.Customers) AS TotalCustomers, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN Geo g ON s.GeoID = g.GeoID
GROUP BY g.Region;
