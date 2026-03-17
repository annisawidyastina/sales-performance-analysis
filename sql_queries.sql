-- ===============================
-- 1. TOTAL PERFORMANCE
-- ===============================

-- Total Revenue
SELECT SUM(revenue) AS total_revenue
FROM sales_data;

-- Total Profit
SELECT SUM(profit) AS total_profit
FROM sales_data;

-- Total Quantity Sold
SELECT SUM(order_quantity) AS total_quantity
FROM sales_data;

-- ===============================
-- 2. TIME ANALYSIS
-- ===============================

-- Revenue by Year
SELECT year, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY year
ORDER BY year;

-- Profit by Month
SELECT month, SUM(profit) AS total_profit
FROM sales_data
GROUP BY month
ORDER BY month;

-- Revenue by Month
SELECT month, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- ===============================
-- 3. PRODUCT ANALYSIS
-- ===============================

-- Top 10 Products by Revenue
SELECT product, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 10;

-- Top 10 Products by Profit
SELECT product, SUM(profit) AS total_profit
FROM sales_data
GROUP BY product
ORDER BY total_profit DESC
LIMIT 10;

-- Revenue by Product Category
SELECT product_category, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY product_category
ORDER BY total_revenue DESC;

-- Profit by Product Category
SELECT product_category, SUM(profit) AS total_profit
FROM sales_data
GROUP BY product_category
ORDER BY total_profit DESC;

-- ===============================
-- 4. CUSTOMER ANALYSIS
-- ===============================

-- Revenue by Gender
SELECT customer_gender, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY customer_gender;

-- Revenue by Age Group
SELECT age_group, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY age_group
ORDER BY total_revenue DESC;

-- ===============================
-- 5. GEOGRAPHIC ANALYSIS
-- ===============================

-- Revenue by Country
SELECT country, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY country
ORDER BY total_revenue DESC;

-- Revenue by State
SELECT state, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY state
ORDER BY total_revenue DESC;

-- ===============================
-- 6. PROFITABILITY ANALYSIS
-- ===============================

-- Profit Margin by Category
SELECT 
    product_category,
    SUM(profit) AS total_profit,
    SUM(revenue) AS total_revenue,
    ROUND(SUM(profit) / SUM(revenue), 2) AS profit_margin
FROM sales_data
GROUP BY product_category;

-- ===============================
-- 7. ADVANCED ANALYSIS
-- ===============================

-- Average Order Quantity
SELECT AVG(order_quantity) AS avg_order_quantity
FROM sales_data;

-- Top 5 States by Profit
SELECT state, SUM(profit) AS total_profit
FROM sales_data
GROUP BY state
ORDER BY total_profit DESC
LIMIT 5;

-- Monthly Sales Trend (Year + Month)
SELECT year, month, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY year, month
ORDER BY year, month;
