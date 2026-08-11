-- ============================================
-- DAY 5: SQL AGGREGATION & DATA ANALYSIS
-- Data Analyst Journey
-- ============================================

-- Tables used:
-- Customers
-- Orders


-- ============================================
-- 1. COUNT()
-- Count the total number of orders
-- ============================================

SELECT COUNT(*) AS total_orders
FROM Orders;


-- ============================================
-- 2. SUM()
-- Calculate the total order amount
-- ============================================

SELECT SUM(amount) AS total_order_amount
FROM Orders;


-- ============================================
-- 3. AVG()
-- Calculate the average order amount
-- ============================================

SELECT AVG(amount) AS average_order_amount
FROM Orders;


-- ============================================
-- 4. MIN()
-- Find the minimum order amount
-- ============================================

SELECT MIN(amount) AS minimum_order_amount
FROM Orders;


-- ============================================
-- 5. MAX()
-- Find the maximum order amount
-- ============================================

SELECT MAX(amount) AS maximum_order_amount
FROM Orders;


-- ============================================
-- 6. GROUP BY + COUNT()
-- Find how many orders each customer made
-- ============================================

SELECT
    c.first_name,
    COUNT(*) AS total_orders
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.first_name;


-- ============================================
-- 7. JOIN + GROUP BY + SUM()
-- Find how much each customer spent
-- ============================================

SELECT
    c.first_name,
    SUM(o.amount) AS total_spent
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.first_name;


-- ============================================
-- 8. HAVING
-- Filter grouped results
-- ============================================

SELECT
    c.first_name,
    COUNT(*) AS total_orders
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.first_name
HAVING COUNT(*) > 1;


-- ============================================
-- DAY 5 KEY TAKEAWAY
--
-- JOIN       → Connect the data
-- GROUP BY   → Organize the data
-- COUNT/SUM  → Analyze the data
-- HAVING     → Filter grouped results
-- ============================================
