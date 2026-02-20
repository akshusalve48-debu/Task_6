# Monthly Revenue & Order Volume Analysis (SQL)
# Objective
The objective of this task is to analyze monthly revenue and order volume from the orders table using SQL aggregation functions.
# Dataset Structure
Table Used: orders,
Column Name	Description,
productid	Product ID,
amount	Order revenue amount,
orderdate	Date of order,
orderid	Unique order ID
# SQL Concepts Used
EXTRACT(YEAR FROM orderdate) → Extract year,
EXTRACT(MONTH FROM orderdate) → Extract month,
SUM(amount) → Calculate total revenue,
COUNT(DISTINCT orderid) → Calculate total order volume,
GROUP BY → Group data by year and month,
ORDER BY → Sort results chronologically,
LIMIT → Restrict number of results
# Output
The query returns:
Monthly total revenue,
Monthly total number of unique orders,
Data filtered for the year 2024,
Results sorted by month,
# Key Insights
Helps identify revenue trends across months,
Shows order growth or decline over time
Useful for business performance tracking
