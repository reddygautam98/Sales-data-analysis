--top selling product  location name
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
--
SELECT 
    g.GeoName, 
    SUM(s.Amount) AS "Total Sales Amount"
FROM sales s
JOIN geo g ON s.GeoID = g.GeoID
GROUP BY g.GeoName
ORDER BY "Total Sales Amount" DESC
LIMIT 5;


