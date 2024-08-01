/* How can I perform a left join between the People and Sales tables to select specific columns from both tables based on matching SPID values?*/

SELECT 
    People.SPID,
    People.salesperson_name,
    People.team,
    Sales.GeoID,
    Sales.PID,
    Sales.SaleDate,
    Sales.Amount,
    Sales.Customers,
    Sales.Box
FROM 
    People
LEFT JOIN 
    Sales 
ON 
    People.SPID = Sales.SPID;
/*How can I perform a right join between the People and Sales tables to select specific columns from both tables based on matching SPID values?*/

SELECT 
    People.SPID,
    People.salesperson_name,
    People.team,
    Sales.GeoID,
    Sales.PID,
    Sales.SaleDate,
    Sales.Amount,
    Sales.Customers,
    Sales.Box
FROM 
    People
RIGHT JOIN 
    Sales 
ON 
    People.SPID = Sales.SPID;
/*How can I perform a full outer join between the People and Sales tables to select specific columns from both tables based on matching SPID values?*/

SELECT 
    People.SPID,
    People.salesperson_name,
    People.team,
    Sales.GeoID,
    Sales.PID,
    Sales.SaleDate,
    Sales.Amount,
    Sales.Customers,
    Sales.Box
FROM 
    People
FULL OUTER JOIN 
    Sales 
ON 
    People.SPID = Sales.SPID;


