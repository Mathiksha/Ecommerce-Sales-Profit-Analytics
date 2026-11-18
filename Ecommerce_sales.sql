create database ecommerce_db;
use ecommerce_db;
select count(*) from ecommerce_sales;
select * from ecommerce_sales;
desc ecommerce_sales;
select*from ecommerce_sales where Order_ID="ORD-010000";
SELECT Order_ID, COUNT(*) AS order_count FROM ecommerce_sales GROUP BY Order_ID HAVING COUNT(*) > 1;
SELECT
    COUNT(*) AS total_rows,
    SUM(Order_ID IS NULL) AS null_orders,
    SUM(Order_Date IS NULL) AS null_order_dates,
    SUM(Country IS NULL) AS null_country,
    SUM(Category IS NULL) AS null_category,
    SUM(Revenue IS NULL) AS null_revenue,
    SUM(Profit IS NULL) AS null_profit
FROM ecommerce_sales;
SELECT * FROM ecommerce_sales WHERE Quantity <= 0;
SELECT * FROM ecommerce_sales WHERE Revenue < 0;
SELECT * FROM ecommerce_sales WHERE Discount < 0 OR Discount > 1;
SELECT
    Order_ID,
    Revenue,
    ROUND(Unit_Price * Quantity * (1 - Discount), 2) AS Calculated_Revenue
FROM ecommerce_sales
LIMIT 20;
SELECT
    Order_ID,
    Revenue,
    Cost,
    Profit,
    ROUND(Revenue - Cost, 2) AS Calculated_Profit
FROM ecommerce_sales
LIMIT 20;
SELECT
    Category,
    SUM(Revenue) AS Revenue
FROM ecommerce_sales
GROUP BY Category
ORDER BY Revenue DESC;
SELECT
    Category,
    SUM(Profit) AS Profit
FROM ecommerce_sales
GROUP BY Category
ORDER BY Profit DESC;
SELECT
    Country,
    SUM(Revenue) AS Revenue
FROM ecommerce_sales
GROUP BY Country
ORDER BY Revenue DESC;
SELECT
    Region,
    round(SUM(Revenue),2) AS Revenue,
    round(SUM(Profit),2) AS Profit
FROM ecommerce_sales
GROUP BY Region
ORDER BY Revenue DESC;
SELECT *
FROM ecommerce_sales
ORDER BY Discount DESC
LIMIT 10;
SELECT *
FROM ecommerce_sales
WHERE Profit < 0
ORDER BY Profit;
SELECT
    Order_Status,
    COUNT(*) AS Orders
FROM ecommerce_sales
GROUP BY Order_Status
ORDER BY Orders DESC;
SELECT
    Order_ID,
    Revenue,
    Profit
FROM ecommerce_sales
ORDER BY Revenue DESC
LIMIT 10;