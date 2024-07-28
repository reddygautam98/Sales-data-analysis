/*How can I retrieve specific columns from the sales table for records where the SPID starts with 'SP1'?*/
SELECT 
    SPID,
    GeoID,
    PID,
    SaleDate,
    Amount,
    Customers,
    Box
FROM sales
WHERE SPID LIKE 'SP1%';
