/*How can I calculate the cost per box sold for each salesperson, grouping by salesperson name and SPID, and ordering the results by salesperson name?*/

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
