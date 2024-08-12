--top perfomance team
SELECT
    p.salesperson_name, p.SPID, p.Team, p.Location, s.GeoID, s.PID, s.SaleDate, s.Amount, s.Customers, s.Box
FROM
    people p
JOIN
    sales s ON p.SPID = s.SPID;
-- top 2 team for best performance 
SELECT p.Team, SUM(s.Amount) AS TotalSalesAmount
FROM people p
JOIN sales s ON p.SPID = s.SPID
GROUP BY p.Team
ORDER BY TotalSalesAmount DESC
LIMIT 2;

