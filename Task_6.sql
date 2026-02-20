create database onlinesales;
use onlinesales;
ALTER TABLE Customers RENAME COLUMN ï»¿CustomerID TO CustomerID;
ALTER TABLE Products RENAME COLUMN ï»¿ProductID TO ProductID;
ALTER TABLE Transactions RENAME COLUMN ï»¿TransactionID TO TransactionID;
RENAME TABLE `order` TO orders;
ALTER TABLE Customers MODIFY CustomerID VARCHAR(50);
ALTER TABLE Customers MODIFY CustomerName VARCHAR(50);
ALTER TABLE Customers MODIFY Region VARCHAR(50);
describe transactions;
ALTER TABLE orders MODIFY ProductID VARCHAR(50);
SET SQL_SAFE_UPDATES = 0;
UPDATE orders SET OrderDate = STR_TO_DATE(OrderDate, '%m/%d/%Y %H:%i');
ALTER TABLE orders MODIFY OrderDate date;
ALTER TABLE orders MODIFY OrderID VARCHAR(50);
ALTER TABLE products MODIFY ProductID VARCHAR(50);
ALTER TABLE products MODIFY ProductName VARCHAR(50);
ALTER TABLE products MODIFY Category VARCHAR(50);
ALTER TABLE transactions MODIFY TransactionID VARCHAR(50);
ALTER TABLE transactions MODIFY CustomerID VARCHAR(50);
ALTER TABLE transactions MODIFY ProductID VARCHAR(50);
SET SQL_SAFE_UPDATES = 0;
UPDATE transactions SET TransactionDate = STR_TO_DATE(TransactionDate, '%m/%d/%Y %H:%i');
ALTER TABLE transactions MODIFY TransactionDate DATE;
SELECT EXTRACT(YEAR FROM orderdate) AS year, EXTRACT(MONTH FROM orderdate) AS month, SUM(amount) AS total_revenue, COUNT(DISTINCT orderid) AS order_volume
 FROM orders GROUP BY EXTRACT(YEAR FROM orderdate), EXTRACT(MONTH FROM orderdate) ORDER BY year ASC, month ASC LIMIT 12;
 SELECT EXTRACT(YEAR FROM orderdate) AS year, EXTRACT(MONTH FROM orderdate) AS month, SUM(amount) AS total_revenue, COUNT(DISTINCT orderid) AS order_volume 
 FROM orders WHERE EXTRACT(YEAR FROM orderdate) = 2023 GROUP BY EXTRACT(YEAR FROM orderdate), EXTRACT(MONTH FROM orderdate) ORDER BY month ASC;
SELECT EXTRACT(YEAR FROM orderdate) AS order_year, EXTRACT(MONTH FROM orderdate) AS order_month, SUM(amount) AS total_revenue, COUNT(DISTINCT orderid) 
AS total_orders FROM orders WHERE EXTRACT(YEAR FROM orderdate) = 2024 GROUP BY EXTRACT(YEAR FROM orderdate), EXTRACT(MONTH FROM orderdate)
 ORDER BY order_month ASC LIMIT 12;