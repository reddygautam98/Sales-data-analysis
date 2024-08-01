SELECT sp.Salesperson_name, AVG(s.Amount / s.Customers) AS AvgSalesPerCustomer
FROM Sales s
JOIN People sp ON s.SPID = sp.SPID
GROUP BY sp.Salesperson_name
ORDER BY AvgSalesPerCustomer DESC;
