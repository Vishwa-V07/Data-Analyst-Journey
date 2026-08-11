-- ============================================
-- DAY 3: SQL JOINs
-- Data Analyst Journey
-- ============================================

-- Customers table

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Vishwa'),
(2, 'Rahul'),
(3, 'Priya'),
(4, 'Karan');


-- Orders table

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50)
);

INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 2, 'Phone'),
(103, 2, 'Mouse'),
(104, 5, 'Keyboard');


-- ============================================
-- INNER JOIN
-- Returns matching records from both tables
-- ============================================

SELECT Customers.Name, Orders.Product
FROM Customers
INNER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;


-- ============================================
-- LEFT JOIN
-- Returns all customers and matching orders
-- ============================================

SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;


-- ============================================
-- RIGHT JOIN
-- Returns all orders and matching customers
-- ============================================

SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;
