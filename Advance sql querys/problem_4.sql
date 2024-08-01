/*How can I retrieve sales data for January, February, and March from the sales table, filtering for records where the amount is greater than 7000 and ordering the results by SaleDate?*/

SELECT 
    quarter1_sales.SPID,
    quarter1_sales.GeoID,
    quarter1_sales.PID,
    quarter1_sales.SaleDate::DATE,
    quarter1_sales.Amount,
    quarter1_sales.Customers,
    quarter1_sales.Box
FROM (
    SELECT * FROM sales WHERE EXTRACT(MONTH FROM SaleDate) = 1  -- January sales
    UNION ALL
    SELECT * FROM sales WHERE EXTRACT(MONTH FROM SaleDate) = 2  -- February sales
    UNION ALL
    SELECT * FROM sales WHERE EXTRACT(MONTH FROM SaleDate) = 3  -- March sales
) AS quarter1_sales
WHERE quarter1_sales.Amount > 7000
ORDER BY quarter1_sales.SaleDate;

