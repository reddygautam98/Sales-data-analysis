SELECT p.Product_name, SUM(s.Amount) / SUM(s.Box) AS SalesPerBox
FROM Sales s
JOIN Product p ON s.PID = p.PID
GROUP BY p.Product_name
ORDER BY SalesPerBox DESC;
