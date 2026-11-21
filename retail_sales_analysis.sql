-- ==========================================
-- PROJECT: RETAIL SALES ANALYSIS USING MYSQL
-- DATABASE: Retail_Sales_Analysis
-- TOOL: MYSQL WORKBENCH
-- ==========================================

use retail_sales_analysis;

-- ==================================================
-- PROJECT: RETAIL SALES ANALYSIS USING MYSQL
-- ==================================================


-- ==================================================
-- STEP 1: DATABASE CREATION
-- ==================================================

CREATE DATABASE IF NOT EXISTS Retail_Sales_Analysis;

USE Retail_Sales_Analysis;

-- ==================================================
-- STEP 2: TABLE CREATION
-- ==================================================

-- 2.1 Create Customers Table

CREATE TABLE IF NOT EXISTS Customers
(
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Registration_Date DATE
);


-- 2.2 Create Products Table

CREATE TABLE IF NOT EXISTS Products
(
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);


-- 2.3 Create Orders Table

CREATE TABLE IF NOT EXISTS Orders
(
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    Region VARCHAR(50),

    FOREIGN KEY (Customer_ID)
    REFERENCES Customers(Customer_ID)
);


-- 2.4 Create Order_Details Table

CREATE TABLE IF NOT EXISTS Order_Details
(
    Order_Detail_ID INT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    Unit_Price DECIMAL(10,2),

    FOREIGN KEY (Order_ID)
    REFERENCES Orders(Order_ID),

    FOREIGN KEY (Product_ID)
    REFERENCES Products(Product_ID)
);


-- ==================================================
-- STEP 3: DATA INSERTION
-- ==================================================

-- 3.1 Insert Customers

INSERT INTO Customers
(Customer_ID, Customer_Name, City, State, Registration_Date)
VALUES
(101, 'Ravi', 'Hyderabad', 'Telangana', '2026-01-10'),
(102, 'Priya', 'Chennai', 'Tamil Nadu', '2026-01-15'),
(103, 'Arjun', 'Bengaluru', 'Karnataka', '2026-02-01'),
(104, 'Sneha', 'Hyderabad', 'Telangana', '2026-02-10'),
(105, 'Kiran', 'Nellore', 'Andhra Pradesh', '2026-02-15'),
(106, 'Anjali', 'Chennai', 'Tamil Nadu', '2026-03-01'),
(107, 'Rahul', 'Mumbai', 'Maharashtra', '2026-03-05'),
(108, 'Divya', 'Bengaluru', 'Karnataka', '2026-03-10'),
(109, 'Manoj', 'Nellore', 'Andhra Pradesh', '2026-04-01'),
(110, 'Kavya', 'Hyderabad', 'Telangana', '2026-04-10');


-- 3.2 Insert Products

INSERT INTO Products
(Product_ID, Product_Name, Category, Price)
VALUES
(201, 'Laptop', 'Electronics', 60000),
(202, 'Mouse', 'Accessories', 800),
(203, 'Keyboard', 'Accessories', 1800),
(204, 'Monitor', 'Electronics', 15000),
(205, 'Printer', 'Electronics', 12000),
(206, 'Headphones', 'Accessories', 2500),
(207, 'Mobile', 'Electronics', 30000),
(208, 'USB Cable', 'Accessories', 400),
(209, 'Tablet', 'Electronics', 25000),
(210, 'Webcam', 'Accessories', 3500);


-- 3.3 Insert Orders

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Region)
VALUES
(1001, 101, '2026-01-12', 'South'),
(1002, 102, '2026-01-18', 'South'),
(1003, 103, '2026-02-05', 'South'),
(1004, 104, '2026-02-12', 'South'),
(1005, 105, '2026-02-20', 'South'),
(1006, 106, '2026-03-03', 'South'),
(1007, 107, '2026-03-10', 'West'),
(1008, 108, '2026-03-15', 'South'),
(1009, 109, '2026-04-05', 'South'),
(1010, 110, '2026-04-15', 'South'),
(1011, 101, '2026-05-02', 'South'),
(1012, 102, '2026-05-10', 'South'),
(1013, 103, '2026-05-18', 'South'),
(1014, 104, '2026-06-01', 'South'),
(1015, 105, '2026-06-10', 'South');


-- 3.4 Insert Order Details

INSERT INTO Order_Details
(Order_Detail_ID, Order_ID, Product_ID, Quantity, Unit_Price)
VALUES
(1, 1001, 201, 1, 60000),
(2, 1001, 202, 2, 800),
(3, 1002, 204, 1, 15000),
(4, 1002, 203, 2, 1800),
(5, 1003, 207, 1, 30000),
(6, 1003, 206, 2, 2500),
(7, 1004, 201, 1, 60000),
(8, 1004, 208, 3, 400),
(9, 1005, 205, 2, 12000),
(10, 1005, 202, 5, 800),
(11, 1006, 209, 1, 25000),
(12, 1006, 210, 2, 3500),
(13, 1007, 201, 1, 60000),
(14, 1007, 206, 1, 2500),
(15, 1008, 204, 2, 15000),
(16, 1008, 203, 3, 1800),
(17, 1009, 207, 2, 30000),
(18, 1009, 208, 5, 400),
(19, 1010, 205, 1, 12000),
(20, 1010, 210, 1, 3500),
(21, 1011, 201, 2, 60000),
(22, 1012, 202, 10, 800),
(23, 1013, 209, 2, 25000),
(24, 1014, 206, 4, 2500),
(25, 1015, 207, 1, 30000);


-- ==================================================
-- STEP 4: DATA VERIFICATION
-- ==================================================

-- 4.1 Display Customers

SELECT *
FROM Customers;


-- 4.2 Display Products

SELECT *
FROM Products;


-- 4.3 Display Orders

SELECT *
FROM Orders;


-- 4.4 Display Order Details

SELECT *
FROM Order_Details;


-- 4.5 Count Customers

SELECT COUNT(*) AS Total_Customers
FROM Customers;


-- 4.6 Count Products

SELECT COUNT(*) AS Total_Products
FROM Products;


-- 4.7 Count Orders

SELECT COUNT(*) AS Total_Orders
FROM Orders;


-- 4.8 Count Order Details

SELECT COUNT(*) AS Total_Order_Details
FROM Order_Details;


-- ==================================================
-- STEP 5: BASIC SQL ANALYSIS
-- ==================================================

-- 5.1 Display All Customers

SELECT *
FROM Customers;


-- 5.2 Display Customer Names and Cities

SELECT Customer_Name, City
FROM Customers;


-- 5.3 Display All Products

SELECT *
FROM Products;


-- 5.4 Display Product Names and Prices

SELECT Product_Name, Price
FROM Products;


-- 5.5 Display All Orders

SELECT *
FROM Orders;


-- 5.6 Display Order IDs and Dates

SELECT Order_ID, Order_Date
FROM Orders;


-- ==================================================
-- STEP 6: FILTERING AND SORTING
-- ==================================================

-- 6.1 Find Electronics Products

SELECT *
FROM Products
WHERE Category = 'Electronics';


-- 6.2 Find Products Above ₹10,000

SELECT *
FROM Products
WHERE Price > 10000;


-- 6.3 Find Customers from Hyderabad

SELECT *
FROM Customers
WHERE City = 'Hyderabad';


-- 6.4 Display Products from Highest to Lowest Price

SELECT *
FROM Products
ORDER BY Price DESC;


-- 6.5 Display Products from Lowest to Highest Price

SELECT *
FROM Products
ORDER BY Price ASC;


-- 6.6 Display Top 5 Expensive Products

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 5;


-- 6.7 Find Orders Between Two Dates

SELECT *
FROM Orders
WHERE Order_Date BETWEEN '2026-01-01' AND '2026-03-31';


-- ==================================================
-- STEP 7: AGGREGATE FUNCTIONS
-- ==================================================

-- 7.1 Total Revenue

SELECT
SUM(Quantity * Unit_Price) AS Total_Revenue
FROM Order_Details;


-- 7.2 Total Quantity Sold

SELECT
SUM(Quantity) AS Total_Quantity
FROM Order_Details;


-- 7.3 Average Product Price

SELECT
AVG(Price) AS Average_Product_Price
FROM Products;


-- 7.4 Highest Product Price

SELECT
MAX(Price) AS Highest_Price
FROM Products;


-- 7.5 Lowest Product Price

SELECT
MIN(Price) AS Lowest_Price
FROM Products;


-- 7.6 Total Number of Orders

SELECT
COUNT(*) AS Total_Orders
FROM Orders;


-- ==================================================
-- STEP 8: GROUP BY AND HAVING
-- ==================================================

-- 8.1 Revenue by Product

SELECT
P.Product_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Product_Name;


-- 8.2 Revenue by Category

SELECT
P.Category,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Category;


-- 8.3 Number of Orders by Customer

SELECT
C.Customer_Name,
COUNT(O.Order_ID) AS Total_Orders
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_Name;


-- 8.4 Categories with Revenue Above ₹50,000

SELECT
P.Category,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Category
HAVING SUM(OD.Quantity * OD.Unit_Price) > 50000;


-- ==================================================
-- STEP 9: INNER JOIN
-- ==================================================

-- 9.1 Customers and Their Orders

SELECT
C.Customer_Name,
O.Order_ID,
O.Order_Date
FROM Customers C
INNER JOIN Orders O
ON C.Customer_ID = O.Customer_ID;


-- 9.2 Orders and Their Products

SELECT
O.Order_ID,
P.Product_Name,
OD.Quantity,
OD.Unit_Price
FROM Orders O
INNER JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
INNER JOIN Products P
ON OD.Product_ID = P.Product_ID;


-- 9.3 Complete Sales Details

SELECT
O.Order_ID,
C.Customer_Name,
P.Product_Name,
OD.Quantity,
OD.Unit_Price,
(OD.Quantity * OD.Unit_Price) AS Total_Sales
FROM Orders O
INNER JOIN Customers C
ON O.Customer_ID = C.Customer_ID
INNER JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
INNER JOIN Products P
ON OD.Product_ID = P.Product_ID;


-- ==================================================
-- STEP 10: LEFT JOIN AND RIGHT JOIN
-- ==================================================

-- 10.1 LEFT JOIN

SELECT
C.Customer_Name,
O.Order_ID
FROM Customers C
LEFT JOIN Orders O
ON C.Customer_ID = O.Customer_ID;


-- 10.2 RIGHT JOIN

SELECT
O.Order_ID,
C.Customer_Name
FROM Orders O
RIGHT JOIN Customers C
ON O.Customer_ID = C.Customer_ID;


-- 10.3 Find Customers Without Orders

SELECT
C.Customer_ID,
C.Customer_Name
FROM Customers C
LEFT JOIN Orders O
ON C.Customer_ID = O.Customer_ID
WHERE O.Order_ID IS NULL;


-- 10.4 Find Products Without Sales

SELECT
P.Product_ID,
P.Product_Name
FROM Products P
LEFT JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
WHERE OD.Product_ID IS NULL;


-- ==================================================
-- STEP 11: CASE WHEN
-- ==================================================

-- 11.1 Categorize Products by Price

SELECT
Product_Name,
Price,
CASE
    WHEN Price >= 50000 THEN 'Expensive'
    WHEN Price >= 15000 THEN 'Medium'
    ELSE 'Affordable'
END AS Price_Category
FROM Products;


-- 11.2 Categorize Orders by Order Value

SELECT
O.Order_ID,
SUM(OD.Quantity * OD.Unit_Price) AS Order_Value,
CASE
    WHEN SUM(OD.Quantity * OD.Unit_Price) >= 50000
    THEN 'High Value'

    WHEN SUM(OD.Quantity * OD.Unit_Price) >= 20000
    THEN 'Medium Value'

    ELSE 'Low Value'
END AS Order_Category
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY O.Order_ID;


-- ==================================================
-- STEP 12: SUBQUERIES
-- ==================================================

-- 12.1 Products Above Average Price

SELECT *
FROM Products
WHERE Price >
(
    SELECT AVG(Price)
    FROM Products
);


-- 12.2 Customers Who Placed Orders

SELECT *
FROM Customers
WHERE Customer_ID IN
(
    SELECT Customer_ID
    FROM Orders
);


-- 12.3 Products with Highest Price

SELECT *
FROM Products
WHERE Price =
(
    SELECT MAX(Price)
    FROM Products
);


-- 12.4 Customers Spending Above Average

SELECT
C.Customer_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Spending
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY C.Customer_ID, C.Customer_Name
HAVING SUM(OD.Quantity * OD.Unit_Price) >
(
    SELECT AVG(Customer_Total)
    FROM
    (
        SELECT
        O2.Customer_ID,
        SUM(OD2.Quantity * OD2.Unit_Price) AS Customer_Total
        FROM Orders O2
        JOIN Order_Details OD2
        ON O2.Order_ID = OD2.Order_ID
        GROUP BY O2.Customer_ID
    ) AS Customer_Spending
);


-- ==================================================
-- STEP 13: COMMON TABLE EXPRESSIONS
-- ==================================================

-- 13.1 Calculate Total Revenue Using CTE

WITH Sales_Data AS
(
    SELECT
    SUM(Quantity * Unit_Price) AS Total_Revenue
    FROM Order_Details
)
SELECT *
FROM Sales_Data;


-- 13.2 Customer Spending Analysis

WITH Customer_Spending AS
(
    SELECT
    C.Customer_ID,
    C.Customer_Name,
    SUM(OD.Quantity * OD.Unit_Price) AS Total_Spending
    FROM Customers C
    JOIN Orders O
    ON C.Customer_ID = O.Customer_ID
    JOIN Order_Details OD
    ON O.Order_ID = OD.Order_ID
    GROUP BY C.Customer_ID, C.Customer_Name
)
SELECT *
FROM Customer_Spending
ORDER BY Total_Spending DESC;


-- 13.3 Monthly Revenue Using CTE

WITH Monthly_Sales AS
(
    SELECT
    DATE_FORMAT(O.Order_Date, '%Y-%m') AS Sales_Month,
    SUM(OD.Quantity * OD.Unit_Price) AS Monthly_Revenue
    FROM Orders O
    JOIN Order_Details OD
    ON O.Order_ID = OD.Order_ID
    GROUP BY DATE_FORMAT(O.Order_Date, '%Y-%m')
)
SELECT *
FROM Monthly_Sales
ORDER BY Sales_Month;


-- ==================================================
-- STEP 14: WINDOW FUNCTIONS
-- ==================================================

-- 14.1 ROW_NUMBER

SELECT
Product_Name,
Price,
ROW_NUMBER() OVER
(
    ORDER BY Price DESC
) AS Row_Num
FROM Products;


-- 14.2 RANK

SELECT
Product_Name,
Price,
RANK() OVER
(
    ORDER BY Price DESC
) AS Product_Rank
FROM Products;


-- 14.3 DENSE_RANK

SELECT
Product_Name,
Price,
DENSE_RANK() OVER
(
    ORDER BY Price DESC
) AS Dense_Product_Rank
FROM Products;


-- 14.4 Rank Products by Revenue

SELECT
P.Product_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue,
DENSE_RANK() OVER
(
    ORDER BY SUM(OD.Quantity * OD.Unit_Price) DESC
) AS Revenue_Rank
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Product_ID, P.Product_Name;


-- ==================================================
-- STEP 15: VIEWS
-- ==================================================

-- 15.1 Create Sales View

CREATE OR REPLACE VIEW Sales_View AS
SELECT
O.Order_ID,
C.Customer_Name,
P.Product_Name,
P.Category,
O.Order_Date,
O.Region,
OD.Quantity,
OD.Unit_Price,
(OD.Quantity * OD.Unit_Price) AS Total_Sales
FROM Orders O
JOIN Customers C
ON O.Customer_ID = C.Customer_ID
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
JOIN Products P
ON OD.Product_ID = P.Product_ID;


-- 15.2 Display Sales View

SELECT *
FROM Sales_View;


-- 15.3 Total Revenue from View

SELECT
SUM(Total_Sales) AS Total_Revenue
FROM Sales_View;


-- 15.4 Monthly Revenue from View

SELECT
DATE_FORMAT(Order_Date, '%Y-%m') AS Sales_Month,
SUM(Total_Sales) AS Monthly_Revenue
FROM Sales_View
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY Sales_Month;


-- ==================================================
-- STEP 16: INDEXES
-- ==================================================

-- 16.1 Create Index on Customer Name

CREATE INDEX idx_customer_name
ON Customers(Customer_Name);


-- 16.2 Create Index on Product Name

CREATE INDEX idx_product_name
ON Products(Product_Name);


-- 16.3 Create Index on Order Date

CREATE INDEX idx_order_date
ON Orders(Order_Date);


-- 16.4 Display Indexes

SHOW INDEX FROM Customers;

SHOW INDEX FROM Products;

SHOW INDEX FROM Orders;


-- 16.5 Check Query Execution Plan

EXPLAIN
SELECT *
FROM Customers
WHERE Customer_Name = 'Ravi';


-- 16.6 Check Query Execution Plan for Order Date

EXPLAIN
SELECT *
FROM Orders
WHERE Order_Date = '2026-01-12';


-- ==================================================
-- STEP 17: MONTHLY SALES ANALYSIS
-- ==================================================

-- 17.1 Monthly Revenue

SELECT
DATE_FORMAT(O.Order_Date, '%Y-%m') AS Sales_Month,
SUM(OD.Quantity * OD.Unit_Price) AS Monthly_Revenue
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY DATE_FORMAT(O.Order_Date, '%Y-%m')
ORDER BY Sales_Month;


-- 17.2 Monthly Order Count

SELECT
DATE_FORMAT(Order_Date, '%Y-%m') AS Sales_Month,
COUNT(*) AS Total_Orders
FROM Orders
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY Sales_Month;


-- 17.3 Highest Revenue Month

SELECT
DATE_FORMAT(O.Order_Date, '%Y-%m') AS Sales_Month,
SUM(OD.Quantity * OD.Unit_Price) AS Monthly_Revenue
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY DATE_FORMAT(O.Order_Date, '%Y-%m')
ORDER BY Monthly_Revenue DESC
LIMIT 1;


-- 17.4 Monthly Quantity Sold

SELECT
DATE_FORMAT(O.Order_Date, '%Y-%m') AS Sales_Month,
SUM(OD.Quantity) AS Total_Quantity
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY DATE_FORMAT(O.Order_Date, '%Y-%m')
ORDER BY Sales_Month;


-- ==================================================
-- STEP 18: CUSTOMER ANALYSIS
-- ==================================================

-- 18.1 Total Spending by Customer

SELECT
C.Customer_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Spending
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY C.Customer_ID, C.Customer_Name
ORDER BY Total_Spending DESC;


-- 18.2 Top 5 Customers

SELECT
C.Customer_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Spending
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY C.Customer_ID, C.Customer_Name
ORDER BY Total_Spending DESC
LIMIT 5;


-- 18.3 Repeat Customers

SELECT
C.Customer_Name,
COUNT(O.Order_ID) AS Total_Orders
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Customer_Name
HAVING COUNT(O.Order_ID) > 1;


-- 18.4 Customers with Above-Average Spending

SELECT
C.Customer_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Spending
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY C.Customer_ID, C.Customer_Name
HAVING SUM(OD.Quantity * OD.Unit_Price) > 62980
ORDER BY Total_Spending DESC;


-- ==================================================
-- STEP 19: PRODUCT AND CATEGORY ANALYSIS
-- ==================================================

-- 19.1 Product-Wise Revenue

SELECT
P.Product_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Product_ID, P.Product_Name
ORDER BY Total_Revenue DESC;


-- 19.2 Category-Wise Revenue

SELECT
P.Category,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Category
ORDER BY Total_Revenue DESC;


-- 19.3 Top 3 Products

SELECT
P.Product_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Product_ID, P.Product_Name
ORDER BY Total_Revenue DESC
LIMIT 3;


-- 19.4 Products Above Average Price

SELECT *
FROM Products
WHERE Price >
(
    SELECT AVG(Price)
    FROM Products
);


-- 19.5 Quantity Sold by Product

SELECT
P.Product_Name,
SUM(OD.Quantity) AS Total_Quantity
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Product_ID, P.Product_Name
ORDER BY Total_Quantity DESC;


-- ==================================================
-- STEP 20: REGIONAL SALES ANALYSIS
-- ==================================================

-- 20.1 Revenue by Region

SELECT
O.Region,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY O.Region
ORDER BY Total_Revenue DESC;


-- 20.2 Orders by Region

SELECT
Region,
COUNT(*) AS Total_Orders
FROM Orders
GROUP BY Region;


-- 20.3 Quantity Sold by Region

SELECT
O.Region,
SUM(OD.Quantity) AS Total_Quantity
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY O.Region;


-- 20.4 Highest Revenue Region

SELECT
O.Region,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY O.Region
ORDER BY Total_Revenue DESC
LIMIT 1;


-- ==================================================
-- STEP 21: ADVANCED BUSINESS QUESTIONS
-- ==================================================

-- 21.1 What is the Total Revenue?

SELECT
SUM(Quantity * Unit_Price) AS Total_Revenue
FROM Order_Details;


-- 21.2 How Many Orders Were Placed?

SELECT
COUNT(*) AS Total_Orders
FROM Orders;


-- 21.3 What is the Average Order Value?

SELECT
SUM(OD.Quantity * OD.Unit_Price) / COUNT(DISTINCT O.Order_ID)
AS Average_Order_Value
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID;


-- 21.4 Which Product Generates the Highest Revenue?

SELECT
P.Product_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Product_ID, P.Product_Name
ORDER BY Total_Revenue DESC
LIMIT 1;


-- 21.5 Which Product Generates the Lowest Revenue?

SELECT
P.Product_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Product_ID, P.Product_Name
ORDER BY Total_Revenue ASC
LIMIT 1;


-- 21.6 Who Are the Top 5 Customers?

SELECT
C.Customer_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Spending
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY C.Customer_ID, C.Customer_Name
ORDER BY Total_Spending DESC
LIMIT 5;


-- 21.7 Which Month Has the Highest Revenue?

SELECT
DATE_FORMAT(O.Order_Date, '%Y-%m') AS Sales_Month,
SUM(OD.Quantity * OD.Unit_Price) AS Monthly_Revenue
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY DATE_FORMAT(O.Order_Date, '%Y-%m')
ORDER BY Monthly_Revenue DESC
LIMIT 1;


-- 21.8 Which Customers Place Repeat Orders?

SELECT
C.Customer_Name,
COUNT(O.Order_ID) AS Total_Orders
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Customer_Name
HAVING COUNT(O.Order_ID) > 1;


-- 21.9 Which Category Generates the Highest Revenue?

SELECT
P.Category,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Category
ORDER BY Total_Revenue DESC
LIMIT 1;


-- 21.10 Which Region Generates the Highest Revenue?

SELECT
O.Region,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY O.Region
ORDER BY Total_Revenue DESC
LIMIT 1;


-- 21.11 Which Products Have Above-Average Prices?

SELECT *
FROM Products
WHERE Price >
(
    SELECT AVG(Price)
    FROM Products
);


-- 21.12 Rank Products by Revenue

SELECT
P.Product_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue,
DENSE_RANK() OVER
(
    ORDER BY SUM(OD.Quantity * OD.Unit_Price) DESC
) AS Revenue_Rank
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Product_ID, P.Product_Name;


-- 21.13 Find Customers Spending Above Average

WITH Customer_Spending AS
(
    SELECT
    C.Customer_ID,
    C.Customer_Name,
    SUM(OD.Quantity * OD.Unit_Price) AS Total_Spending
    FROM Customers C
    JOIN Orders O
    ON C.Customer_ID = O.Customer_ID
    JOIN Order_Details OD
    ON O.Order_ID = OD.Order_ID
    GROUP BY C.Customer_ID, C.Customer_Name
)
SELECT *
FROM Customer_Spending
WHERE Total_Spending >
(
    SELECT AVG(Total_Spending)
    FROM Customer_Spending
)
ORDER BY Total_Spending DESC;


-- 21.14 Calculate Category Revenue Percentage

SELECT
P.Category,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue,
ROUND(
    SUM(OD.Quantity * OD.Unit_Price) * 100 /
    (
        SELECT SUM(Quantity * Unit_Price)
        FROM Order_Details
    ),
    2
) AS Revenue_Percentage
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Category;


-- 21.15 Find Top 3 Products Using DENSE_RANK

WITH Product_Revenue AS
(
    SELECT
    P.Product_Name,
    SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
    FROM Products P
    JOIN Order_Details OD
    ON P.Product_ID = OD.Product_ID
    GROUP BY P.Product_ID, P.Product_Name
),
Product_Ranking AS
(
    SELECT
    Product_Name,
    Total_Revenue,
    DENSE_RANK() OVER
    (
        ORDER BY Total_Revenue DESC
    ) AS Product_Rank
    FROM Product_Revenue
)
SELECT *
FROM Product_Ranking
WHERE Product_Rank <= 3
ORDER BY Product_Rank;


-- ==================================================
-- STEP 22: FINAL BUSINESS INSIGHTS
-- ==================================================

-- 22.1 Overall Project Summary

SELECT
(SELECT COUNT(*) FROM Customers) AS Total_Customers,

(SELECT COUNT(*) FROM Products) AS Total_Products,

(SELECT COUNT(*) FROM Orders) AS Total_Orders,

(SELECT SUM(Quantity) FROM Order_Details) AS Total_Quantity,

(SELECT SUM(Quantity * Unit_Price)
 FROM Order_Details) AS Total_Revenue,

(SELECT ROUND(
    SUM(Quantity * Unit_Price) /
    COUNT(DISTINCT Order_ID), 2
 )
 FROM Order_Details) AS Average_Order_Value;


-- 22.2 Final Category Revenue

SELECT
P.Category,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Category
ORDER BY Total_Revenue DESC;


-- 22.3 Final Regional Revenue

SELECT
O.Region,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY O.Region
ORDER BY Total_Revenue DESC;


-- 22.4 Final Product Performance

SELECT
P.Product_Name,
SUM(OD.Quantity * OD.Unit_Price) AS Total_Revenue,
SUM(OD.Quantity) AS Total_Quantity
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
GROUP BY P.Product_ID, P.Product_Name
ORDER BY Total_Revenue DESC;


-- 22.5 Final Monthly Sales

SELECT
DATE_FORMAT(O.Order_Date, '%Y-%m') AS Sales_Month,
SUM(OD.Quantity * OD.Unit_Price) AS Monthly_Revenue
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY DATE_FORMAT(O.Order_Date, '%Y-%m')
ORDER BY Sales_Month;