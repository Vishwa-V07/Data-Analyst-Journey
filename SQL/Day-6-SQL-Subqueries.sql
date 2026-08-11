-- ============================================
-- DAY 6: SQL SUBQUERIES
-- Data Analyst Journey
-- ============================================

-- A subquery is a query inside another query.
-- The inner query runs first and its result
-- is used by the outer query.


-- ============================================
-- 1. Find orders above the average order amount
-- ============================================

SELECT *
FROM Orders
WHERE amount > (
    SELECT AVG(amount)
    FROM Orders
);


-- ============================================
-- 2. Find the highest order amount
-- ============================================

SELECT *
FROM Orders
WHERE amount = (
    SELECT MAX(amount)
    FROM Orders
);


-- ============================================
-- 3. Find orders below the average amount
-- ============================================

SELECT *
FROM Orders
WHERE amount < (
    SELECT AVG(amount)
    FROM Orders
);


-- ============================================
-- 4. Find customers who have placed orders
-- ============================================

SELECT *
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
);


-- ============================================
-- 5. Find customers who have NOT placed orders
-- ============================================

SELECT *
FROM Customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM Orders
);


-- ============================================
-- 6. Subquery with an aggregate function
-- Find customers whose spending is above
-- the average customer spending
-- ============================================

SELECT
    c.first_name,
    SUM(o.amount) AS total_spent
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name
HAVING SUM(o.amount) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(amount) AS customer_total
        FROM Orders
        GROUP BY customer_id
    ) AS customer_totals
);


-- ============================================
-- DAY 6 KEY TAKEAWAY
--
-- Subquery → Query inside another query
-- Inner query → Runs first
-- Outer query → Uses the inner result
--
-- Common uses:
-- AVG()
-- MAX()
-- IN
-- NOT IN
-- Filtering based on another query
-- ============================================
