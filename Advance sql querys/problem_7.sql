/*How can I find the date in February with the highest sales amount, displaying the top sales amount for that date?*/

SELECT SaleDate, MAX(Amount) AS TopSalesAmount
FROM sales 
WHERE EXTRACT(MONTH FROM SaleDate) = 2
GROUP BY SaleDate
ORDER BY TopSalesAmount DESC
LIMIT 1;
