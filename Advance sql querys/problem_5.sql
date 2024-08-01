/*How can I calculate the total sales amount for each GeoID?*/

SELECT GeoID, SUM(Amount) AS TotalSales
FROM sales
GROUP BY GeoID;
/*How can I find the average sale amount per customer across all sales records?*/

SELECT AVG(Amount) AS AverageSalesAmount
FROM sales;
/*How can I identify the date with the highest total sales?*/

SELECT SaleDate, SUM(Amount) AS TotalSales
FROM sales
GROUP BY SaleDate
ORDER BY TotalSales DESC
LIMIT 1;

/*How can I calculate the total sales amount for each product (PID)?*/

SELECT PID, SUM(Amount) AS TotalSales
FROM sales
GROUP BY PID;

/*How can I determine the number of unique customers who made purchases?*/

SELECT COUNT(DISTINCT Customers) AS UniqueCustomers
FROM sales;

/*How can I find the GeoID with the highest number of customers?*/

SELECT GeoID, SUM(Customers) AS TotalCustomers
FROM sales
GROUP BY GeoID
ORDER BY TotalCustomers DESC
LIMIT 1;
/*How can I calculate the total sales amount for each SPID?*/

SELECT SPID, SUM(Amount) AS TotalSales
FROM sales
GROUP BY SPID;
/* How can I find the average number of boxes sold per transaction?*/

SELECT AVG(Box) AS AverageBoxesPerTransaction
FROM sales;
/*How can I identify the GeoID that consistently had sales above $5000 across all sale dates?*/

SELECT GeoID
FROM sales
GROUP BY GeoID
HAVING MIN(Amount) > 5000;
/*How can I calculate the correlation between the number of customers and the number of boxes sold per sale date?*/

WITH SalesData AS (
    SELECT SaleDate, SUM(Customers) AS TotalCustomers, SUM(Box) AS TotalBoxes
    FROM sales
    GROUP BY SaleDate
)
SELECT CORR(TotalCustomers, TotalBoxes) AS Correlation
FROM SalesData;
/*How can I determine the SPID that generated the highest amount in sales for each product (PID) and list them in descending order?*/

SELECT 
    SPID,
    PID,
    SUM(Amount) AS TotalAmount
FROM 
    sales
GROUP BY 
    SPID,
    PID
ORDER BY 
    TotalAmount DESC;

/*How can I calculate both the total and average sales by GeoID?*/

SELECT GeoID, SUM(Amount) AS TotalSales, AVG(Amount) AS AverageSales
FROM sales
GROUP BY GeoID;
/*How can I calculate the total and average sales by GeoID, including additional data from the geo table?*/

SELECT g.GeoID, SUM(s.Amount) AS TotalAmount, AVG(s.Amount) AS AverageAmount, SUM(s.Box) AS TotalBoxes
FROM sales s 
JOIN geo g ON s.GeoID = g.GeoID
GROUP BY g.GeoID;
/*How can I retrieve the total amount and the number of boxes sold for each product category and team, including data from the people and product tables, limited to 10 records?*/

SELECT pr.Category, p.Team, SUM(s.Amount) AS TotalAmount, COUNT(s.Box) AS TotalBoxes
FROM sales s 
JOIN people p ON p.SPID = s.SPID
JOIN product pr ON pr.PID = s.PID
GROUP BY pr.Category, p.Team
LIMIT 10;












