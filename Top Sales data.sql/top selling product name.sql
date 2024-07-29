--top selling product name
SELECT s.SaleDate, s.Amount, s.Customers, s.Box,
       pr.product_name, pr.Category, pr.Size, pr.Cost_per_box,
       g.GeoName, g.Region
FROM sales s
JOIN product pr ON s.PID = pr.PID
JOIN geo g ON s.GeoID = g.GeoID;

--The query lists the top 3 products with the highest box sales to identify best selling product  .
SELECT pr.Product_name, SUM(s.box) AS TotalSalesbox 
FROM sales s
JOIN product pr ON s.PID = pr.PID
GROUP BY pr.Product_name, s.box
ORDER BY TotalSalesbox DESC
LIMIT 3;



