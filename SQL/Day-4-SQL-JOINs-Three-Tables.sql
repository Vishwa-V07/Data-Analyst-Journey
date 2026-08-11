-- ============================================
-- DAY 4: SQL JOINs - THREE TABLES
-- Data Analyst Journey
-- ============================================

-- Today I learned how to combine data
-- from multiple related tables using JOINs.
--
-- Tables:
-- Customers
-- Orders
-- Shippings
--
-- Topics:
-- 1. INNER JOIN
-- 2. Joining three tables
-- 3. Filtering joined data using WHERE
-- 4. Choosing the correct joining key


-- ============================================
-- INNER JOIN: Connecting three tables
-- ============================================

SELECT
    Customers.first_name,
    Customers.country,
    Orders.item,
    Orders.amount,
    Shippings.status
FROM Customers

JOIN Orders
    ON Customers.customer_id = Orders.customer_id

JOIN Shippings
    ON Customers.customer_id = Shippings.customer;


-- ============================================
-- Filtering joined data using WHERE
-- ============================================

SELECT
    Customers.first_name,
    Customers.country,
    Orders.item,
    Orders.amount,
    Shippings.status
FROM Customers

JOIN Orders
    ON Customers.customer_id = Orders.customer_id

JOIN Shippings
    ON Customers.customer_id = Shippings.customer

WHERE Shippings.status = 'Delivered';
