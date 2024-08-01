/* How can I retrieve detailed sales information, including product details and geographic data, and also identify the top 3 best-selling products by the highest number of boxes sold?*/
-- Retrieve detailed sales information, including product details and geographic data
SELECT 
    s.SaleDate, 
    s.Amount, 
    s.Customers, 
    s.Box,
    pr.Product_Name, 
    pr.Category, 
    pr.Size, 
    pr.Cost_Per_Box,
    g.GeoName, 
    g.Region
FROM 
    sales s
JOIN 
    product pr ON s.PID = pr.PID
JOIN 
    geo g ON s.GeoID = g.GeoID;

-- Identify the top 3 products with the highest box sales
SELECT 
    pr.Product_Name, 
    SUM(s.Box) AS TotalSalesBox 
FROM 
    sales s
JOIN 
    product pr ON s.PID = pr.PID
GROUP BY 
    pr.Product_Name
ORDER BY 
    TotalSalesBox DESC
LIMIT 3;



