SELECT p.Category, AVG(p.Cost_per_box) AS AvgCostPerBox
FROM Product p
GROUP BY p.Category;
