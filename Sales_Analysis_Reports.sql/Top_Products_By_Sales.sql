--How can I identify the top three products by total sales amount for each product size, considering only sales with an odd number of customers, and include geographical information, ordered by size and total sales amount in descending order?
WITH OddCustomerSales AS (
    SELECT 
        s.SPID,
        s.GeoID,
        s.PID,
        s.SaleDate,
        s.Amount,
        s.Customers,
        s.Box
    FROM sales s
    WHERE s.Customers % 2 = 1
),
ProductSales AS (
    SELECT 
        p.Size,
        p.PID,
        p.Product_Name,
        s.GeoID,
        SUM(s.Amount) AS TotalSalesAmount
    FROM OddCustomerSales s
    JOIN product p ON s.PID = p.PID
    GROUP BY p.Size, p.PID, p.Product_Name, s.GeoID
),
RankedProducts AS (
    SELECT 
        Size,
        PID,
        Product_Name,
        GeoID,
        TotalSalesAmount,
        ROW_NUMBER() OVER (PARTITION BY Size ORDER BY TotalSalesAmount DESC) AS rn
    FROM ProductSales
)
SELECT 
    rp.Size,
    rp.PID,
    rp.Product_Name,
    rp.TotalSalesAmount,
    g.GeoName,
    g.Region
FROM RankedProducts rp
JOIN geo g ON rp.GeoID = g.GeoID
WHERE rp.rn <= 3
ORDER BY rp.Size, rp.TotalSalesAmount DESC;