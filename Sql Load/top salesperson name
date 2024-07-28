--top salesperson name
WITH RankedSales AS (
    SELECT 
        g.GeoName, 
        p.spid, 
        p.SalesPerson_name, 
        SUM(s.Amount) AS TotalSalesAmount,
        ROW_NUMBER() OVER (PARTITION BY g.GeoName ORDER BY SUM(s.Amount) DESC) AS rn
    FROM sales s
    JOIN people p ON s.SPID = p.SPID
    JOIN geo g ON s.GeoID = g.GeoID
    GROUP BY g.GeoName, p.spid, p.SalesPerson_name
)
SELECT 
    GeoName, 
    spid, 
    SalesPerson_name, 
    TotalSalesAmount
FROM RankedSales
WHERE rn = 1
ORDER BY GeoName;

