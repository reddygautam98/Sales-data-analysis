--salesperson cost per box selling 
SELECT
    p.Salesperson_name,
    p.SPID,
    SUM(s.Amount) / SUM(s.Box) AS Cost_Per_Box_Sold
FROM
    sales s
JOIN
    people p ON s.SPID = p.SPID
GROUP BY
    p.Salesperson_name, p.SPID
ORDER BY
    p.Salesperson_name;
