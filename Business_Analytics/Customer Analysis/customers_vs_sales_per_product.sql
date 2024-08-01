SELECT p.Product_name, SUM(s.Customers) AS TotalCustomers, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN Product p ON s.PID = p.PID
GROUP BY p.Product_name;
