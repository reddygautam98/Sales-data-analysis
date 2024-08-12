--top saledate & amount in january
SELECT SaleDate, MAX(Amount) AS TopSalesAmount
FROM sales 
WHERE EXTRACT(MONTH FROM SaleDate) = 1
GROUP BY SaleDate
ORDER BY TopSalesAmount DESC
LIMIT 1;
