-- How can I retrieve detailed sales information including product and geographic data, and also identify the top 5 geographic regions by total sales amount?
SELECT 
    s.SaleDate, 
    s.Amount, 
    s.Customers, 
    s.Box,
    p.Product_name, 
    p.Category, 
    p.Size, 
    p.Cost_per_box,
    g.GeoName, 
    g.Region
FROM sales s
JOIN product p ON s.PID = p.PID
JOIN geo g ON s.GeoID = g.GeoID;

SELECT 
    g.GeoName, 
    SUM(s.Amount) AS "Total Sales Amount"
FROM sales s
JOIN geo g ON s.GeoID = g.GeoID
GROUP BY g.GeoName
ORDER BY "Total Sales Amount" DESC
LIMIT 5;