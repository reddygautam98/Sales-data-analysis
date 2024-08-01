SELECT g.Region, AVG(s.Amount) AS AvgSalesPerSalesperson
FROM Sales s
JOIN Geo g ON s.GeoID = g.GeoID
GROUP BY g.Region
ORDER BY AvgSalesPerSalesperson DESC
LIMIT 1;
