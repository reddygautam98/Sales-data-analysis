 # introduction
 
 - In this sales data analytics project, we analyze sales data to uncover valuable insights. We calculate the cost per box sold by salespeople, retrieve detailed sales information, identify top-performing teams, and determine the best-selling products. Our exploration spans regions, product sizes, and sales amounts. Whether you’re interested in individual performance or overall trends, this project provides actionable insights for data-driven decision-making.

 - Sql queryies? check  them out here [Top Sales data.sql](/Top%20Sales%20data.sql/)

 # Background

- This sales data analysis aims to understand performance across regions, products, salespeople, and customers. The dataset includes four tables: Sales (transactional data), Geo (geographical information), Product (product details), and People (salesperson data). Key objectives are evaluating sales performance by region, product revenue, salesperson efficiency, and sales trends over time. Insights will guide strategic decisions, optimize pricing, inform product development, and enhance performance management. By leveraging these findings, the organization can improve resource allocation, boost profitability, and achieve sustainable growth.

- Data details from my [Business_Analytics](/Business_Analytics/) it's packed with insight sales data analysis 

### The Question i wanted to answer through my sql quries were 

here are the questions corresponding to each of the SQL queries provided:

### Sales Performance by Region:

1. **Total sales amount per region:**
   - What is the total sales amount for each region?

2. **Region with the highest average sales per salesperson:**
   - Which region has the highest average sales per salesperson?

3. **Number of customers per region and its correlation with total sales amount:**
   - What is the number of customers per region, and how does it correlate with the total sales amount?

### Product Performance Analysis:
4. **Product category that generates the most revenue:**
   - Which product category generates the most revenue?

5. **Average cost per box for each product category:**
   - What is the average cost per box for each product category?

6. **Top 5 best-selling products by total revenue:**
   - What are the top 5 best-selling products by total revenue?

### Salesperson Performance Evaluation:
7. **Top 5 salespeople based on total sales amount:**
   - Who are the top 5 salespeople based on total sales amount?

8. **Sales performance of each team:**
   - What is the sales performance of each team?

9. **Salesperson with the highest number of customers:**
   - Which salesperson has the highest number of customers?

### Sales Trends Over Time:
10. **Monthly sales trends:**
    - What are the monthly sales trends?

11. **Noticeable seasonality in the sales data:**
    - Is there any noticeable seasonality in the sales data?

12. **Sales performance in the first half of the year vs. the second half:**
    - How does sales performance in the first half of the year compare to the second half?

### Sales Efficiency:
13. **Average sales amount per customer for each salesperson:**
    - What is the average sales amount per customer for each salesperson?

14. **Cost efficiency by comparing total sales amount to total cost per box for each salesperson:**
    - How does cost efficiency compare by total sales amount to total cost per box for each salesperson?

15. **Sales per box ratio for each product:**
    - What is the sales per box ratio for each product?

### Geographical Sales Insights:
16. **Location with the highest total sales amount:**
    - Which location has the highest total sales amount?

17. **Comparison of sales performance between APAC, Americas, and Europe:**
    - How does sales performance compare between APAC, Americas, and Europe?

18. **Geographical trends in product preferences:**
    - What are the geographical trends in product preferences?

### Customer Analysis:
19. **Average number of customers per salesperson:**
    - What is the average number of customers per salesperson?

20. **Top 5 products based on the number of customers:**
    - What are the top 5 products based on the number of customers?

21. **Correlation between the number of customers and the sales amount for each product:**
    - What is the correlation between the number of customers and the sales amount for each product?

### Cost Analysis:
22. **Product with the highest and lowest cost per box:**
    - Which product has the highest cost per box?
    - Which product has the lowest cost per box?

23. **Relationship between product size (LARGE vs. SMALL) and total sales amount:**
    - What is the relationship between product size (LARGE vs. SMALL) and total sales amount?

24. **Total cost of all products sold compared to the total sales amount:**
    - What is the total cost of all products sold compared to the total sales amount?

 # Tools I Used
For my deep dive  into the sales data analyst, i harnessed the power several key tools:

- SQL: The backbone of data analysis, allowing you to   query databases and uncover critical insights.

- PostgreSQL: A powerful database management system ideal for handling job posting data.

- Visual Studio Code: A go-to tool for managing databases and executing SQL queries.

- Git & GitHub: Essential for version control and sharing SQL scripts and analysis, ensuring collaboration and project tracking.

 # The Analysis
 - Each query for this project aimed at investigating specific aspect of the data analyst sales here's how i approached each question :
 ### 1.Geographical Sales Insights
 - To identify  the total sales amount for each product by region.It joins the Sales, Geo, and Product tables, groups the results by region and product name, and calculates the sum of sales amounts , i filtered data analyst positions by avarage yearly in this query
 
 ``` sql
SELECT g.Region, p.Product_name, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN Geo g ON s.GeoID = g.GeoID
JOIN Product p ON s.PID = p.PID
GROUP BY g.Region, p.Product_name
ORDER BY g.Region, TotalSales DESC;
 ```

![Geo Sales Data](assets\Geo.jpg)
* Bar graph visulizing the salary for the Geo Sales Data for data analysts; ChatGPT generated this graph from my SQL query result *

### 2. Top_5_salespeople_by_total_sales
- The purpose of this query is to identify and highlight the top 5 salespeople in terms of their total sales amount. This insight is crucial for performance evaluation, recognizing top performers, and making strategic decisions related to sales management and resource allocation
``` sql
SELECT sp.Salesperson_name, SUM(s.Amount) AS TotalSales
FROM Sales s
JOIN People sp ON s.SPID = sp.SPID
GROUP BY sp.Salesperson_name
ORDER BY TotalSales DESC
LIMIT 5; 
``` 
| salesperson_name | totalsales |
|------------------|------------|
| Brien Boise      | 42704      |
| Van Tuxwell      | 33618      |
| Madelene Upcott  | 32137      |
| Curtice Advani   | 31989      |
| Husein Augar     | 27203      |

 # What I Learned
 Throughout the adventure, I've turbocharged my sql toolkit with some serious firpower:

 - ** complex Query Crafting:** Mastered the art of AdvSql, merging table like a pro and wielding with clauses for ninja-level team table maneuvers.

- ** Data Aggregation:** Got cozy with GROUP BY and turned aggregate function like count and avg ()into my data-summarizing sidekicks.
- ** Analytical Wizardry:** Leveled up my real-world puzzle-solveing skill, turning question into actionable, insightful sql quries
 -**copmlex query crafting :** -

 # Insight 

 Here are the insights and conclusions derived from the provided SQL queries:

1. **Highest and Lowest Cost Products**:
   - The product with the highest cost per box and the product with the lowest cost per box are identified. This can help in understanding the price range of the products.

2. **Total Sales by Product Size**:
   - Sales are grouped by product size, giving insights into which product sizes are selling the most.

3. **Total Cost vs. Total Sales**:
   - The query calculates the total cost and total sales, allowing for an evaluation of overall profitability.

4. **Average Customers per Salesperson**:
   - Identifies the average number of customers handled by each salesperson, which helps in assessing sales performance.

5. **Total Customers and Sales by Product**:
   - Shows the total number of customers and sales for each product, highlighting the most popular products.

6. **Top 5 Products by Total Customers**:
   - Lists the top 5 products that attract the most customers, aiding in inventory and marketing strategies.

7. **Total Sales by Region and Product**:
   - Provides a breakdown of sales by region and product, which is useful for regional sales strategies.

8. **Top Location by Sales**:
   - Identifies the location with the highest sales, which can be used for resource allocation and strategy planning.

9. **Total Sales by Region**:
   - Summarizes sales by region, giving a clear picture of regional performance.

10. **Average Cost per Box by Category**:
    - Shows the average cost per box for each product category, helping in pricing strategies.

11. **Top Category by Revenue**:
    - Identifies the product category with the highest revenue, highlighting key areas of focus.

12. **Top 5 Products by Revenue and Average Sales Amount**:
    - Lists the top 5 products by revenue and provides their average sales amount, which helps in identifying high-performing products.

13. **Average Sales per Customer by Salesperson**:
    - Shows the average sales per customer for each salesperson, aiding in performance assessments.

14. **Cost Efficiency by Salesperson**:
    - Calculates the cost efficiency of salespersons, highlighting the most cost-effective individuals.

15. **Sales per Box by Product**:
    - Provides sales per box for each product, useful for understanding product performance.

16. **Total Customers and Sales by Region**:
    - Summarizes total customers and sales by region, which helps in understanding market reach.

17. **Average Sales per Salesperson by Region**:
    - Highlights the region with the highest average sales per salesperson, useful for performance benchmarks.

18. **Sales by Half of the Year**:
    - Divides sales into the first and second halves of the year, showing seasonal sales trends.

19. **Monthly Sales**:
    - Provides a month-by-month breakdown of sales, useful for identifying monthly trends and planning.

20. **Average Sales per Team Member**:
    - Shows the average sales per team member, aiding in team performance evaluations.

21. **Top Salesperson by Customers**:
    - Identifies the salesperson with the highest number of customers, highlighting top performers.

22. **Top 5 Salespersons by Sales**:
    - Lists the top 5 salespersons by total sales, useful for recognizing high achievers.

- These insights can help in making informed decisions regarding pricing, inventory management, sales strategies, regional performance, and individual salesperson performance.

# Conclusions 

### Closing Thoughts
- In conclusion, this comprehensive sales data analysis provides critical insights into product performance, regional sales, and salesperson effectiveness. Identifying key metrics such as highest and lowest cost products, total sales, and customer engagement offers a sophisticated understanding of market dynamics. Highlighting top-performing products, regions, and revenue-driving categories emphasizes the importance of cost efficiency and customer interaction. These data-driven insights can inform strategic decisions on pricing, inventory management, and resource allocation, driving superior business outcomes. Leveraging these insights enables businesses to refine sales strategies, optimize performance, and achieve sustained growth in a competitive market.
