SELECT sp.Salesperson_name, AVG(s.Customers) AS AvgCustomers
FROM Sales s
JOIN People sp ON s.SPID = sp.SPID
GROUP BY sp.Salesperson_name
ORDER BY AvgCustomers DESC;
