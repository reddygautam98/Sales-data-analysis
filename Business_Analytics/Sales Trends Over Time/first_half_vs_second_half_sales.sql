SELECT
    CASE
        WHEN EXTRACT(MONTH FROM s.SaleDate) <= 6 THEN 'First Half'
        ELSE 'Second Half'
    END AS HalfOfYear,
    SUM(s.Amount) AS TotalSales
FROM Sales s
GROUP BY HalfOfYear;
