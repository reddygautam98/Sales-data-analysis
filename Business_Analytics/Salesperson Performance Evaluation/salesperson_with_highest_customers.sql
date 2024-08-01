SELECT sp.Salesperson_name, SUM(s.Customers) AS TotalCustomers, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN People sp ON s.SPID = sp.SPID
GROUP BY sp.Salesperson_name
ORDER BY TotalCustomers DESC
LIMIT 1;
