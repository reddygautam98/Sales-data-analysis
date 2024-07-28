--top selling product by size
WITH ProductSales AS (
    SELECT 
        p.Size,
        p.PID,
        p.Product_Name,
        SUM(s.Amount) AS TotalSalesAmount
    FROM sales s
    JOIN product p ON s.PID = p.PID
    GROUP BY p.Size, p.PID, p.Product_Name
),
RankedProducts AS (
    SELECT 
        Size,
        PID,
        Product_Name,
        TotalSalesAmount,
        ROW_NUMBER() OVER (PARTITION BY Size ORDER BY TotalSalesAmount DESC) AS rn
    FROM ProductSales
)
SELECT 
    Size,
    PID,
    Product_Name,
    TotalSalesAmount
FROM RankedProducts
WHERE rn = 1
ORDER BY Size;




select * from sales 