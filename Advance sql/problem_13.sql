/*How can I combine sales records from the first and second halves of the year 2021 into a single result set, and how can I include duplicate records if necessary?*/


-- query using the UNION operator for the sales table, assuming we want to combine sales records from two different date ranges into a single result set:
-- Sales from the first half of the year
SELECT 
    SPID,
    GeoID,
    PID,
    SaleDate,
    Amount,
    Customers,
    Box
FROM sales
WHERE SaleDate BETWEEN '2021-01-01' AND '2021-06-30'

UNION

-- Sales from the second half of the year
SELECT 
    SPID,
    GeoID,
    PID,
    SaleDate,
    Amount,
    Customers,
    Box
FROM sales
WHERE SaleDate BETWEEN '2021-07-01' AND '2021-12-31'

ORDER BY SaleDate;
--If you want to include duplicate records, you can use UNION ALL instead of UNION:
-- Sales from the first half of the year
SELECT 
    SPID,
    GeoID,
    PID,
    SaleDate,
    Amount,
    Customers,
    Boxes
FROM sales
WHERE SaleDate BETWEEN '2021-01-01' AND '2021-06-30'

UNION ALL

-- Sales from the second half of the year
SELECT 
    SPID,
    GeoID,
    PID,
    SaleDate,
    Amount,
    Customers,
    Box
FROM sales
WHERE SaleDate BETWEEN '2021-07-01' AND '2021-12-31'

ORDER BY SaleDate;

