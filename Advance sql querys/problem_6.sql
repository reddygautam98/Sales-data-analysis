/*How can I retrieve detailed sales information along with salesperson details, and how can I find the top two performing teams based on the total sales amount?*/

SELECT
    p.salesperson_name, p.SPID, p.Team, p.Location, s.GeoID, s.PID, s.SaleDate, s.Amount, s.Customers, s.Box
FROM
    people p
JOIN
    sales s ON p.SPID = s.SPID;
-- the LIMIT 2 restricts the result to the top two performing teams.
SELECT p.Team, SUM(s.Amount) AS TotalSalesAmount
FROM people p
JOIN sales s ON p.SPID = s.SPID
GROUP BY p.Team
ORDER BY TotalSalesAmount DESC
LIMIT 2;

