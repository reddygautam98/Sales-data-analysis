SELECT sp.Team, AVG(s.Amount) AS AvgSalesPerMember
FROM Sales s
JOIN People sp ON s.SPID = sp.SPID
GROUP BY sp.Team
ORDER BY AvgSalesPerMember DESC;
