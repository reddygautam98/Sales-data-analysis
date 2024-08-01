SELECT sp.Salesperson_name, SUM(s.Amount) / SUM(p.Cost_per_box * s.Box) AS CostEfficiency
FROM Sales s
JOIN People sp ON s.SPID = sp.SPID
JOIN Product p ON s.PID = p.PID
GROUP BY sp.Salesperson_name
ORDER BY CostEfficiency DESC;
