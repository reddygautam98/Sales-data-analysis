/*How can I retrieve the first 10 sale dates from the sales table?*/

select saledate
from sales
limit 10;
/*How can I rename the columns in the sales table to display the amount as price, the box as item, and convert the saledate column to a date format?*/

SELECT 
    amount AS price,
    box AS item,
    saledate::date AS date
FROM 
    sales;
/*How can I convert the saledate column from UTC to Eastern Standard Time (EST), extract the month and year from the saledate, and limit the results to the first 10 rows?*/

SELECT saledate AT TIME ZONE 'UTC' AT TIME ZONE 'EST' as date_time,
EXTRACT(MONTH FROM SaleDate) AS date_month,
EXTRACT(YEAR FROM SaleDate) AS date_year
FROM sales
limit 10;
/* How can I count the occurrences of sale dates for each month and group the results by month?*/

SELECT COUNT(saledate) ,
       EXTRACT(MONTH FROM saledate) AS month
FROM sales
GROUP BY EXTRACT(MONTH FROM saledate);
/*How can I count the occurrences of sale dates within the specific date range from January 10, 2020, to February 2, 2022, group the results by individual dates, and order them chronologically?*/

select count (saledate) ,extract(month from saledate)as date_month
from sales 
where saledate between '2020-01-10' and  '2022-02-02'
GROUP BY saledate
order by saledate;


