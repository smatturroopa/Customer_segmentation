 CDACL-002 Customer Segmentation
-- Task 1: Product Category and Discount Analysis

-- Query 1: Category Analysis
SELECT
    Category,
    COUNT(*) AS total_orders,
    ROUND(AVG(Purchase_Amount_USD), 2) AS avg_purchase_amount,
    ROUND(AVG(Review_Rating), 2) AS avg_rating,
    SUM(CASE
        WHEN Discount_Applied = 'Yes' THEN 1
        ELSE 0
    END) AS discount_orders,
    ROUND(
        100 * SUM(CASE
            WHEN Discount_Applied = 'Yes' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS discount_pct
FROM shopping_table
GROUP BY Category
ORDER BY total_orders DESC;

-- Query 2: Discount vs Non-Discount Analysis
SELECT
    Category,
    Discount_Applied,
    COUNT(*) AS total_orders,
    ROUND(AVG(Purchase_Amount_USD), 2) AS avg_purchase_amount
FROM shopping_table
GROUP BY Category, Discount_Applied
ORDER BY Category, Discount_Applied;

-- Query 3: Total Sales Comparison
SELECT
    Category,
    Discount_Applied,
    COUNT(*) AS total_orders,
    ROUND(SUM(Purchase_Amount_USD), 2) AS total_sales,
    ROUND(AVG(Purchase_Amount_USD), 2) AS avg_purchase_amount
FROM shopping_table
GROUP BY Category, Discount_Applied
ORDER BY Category, Discount_Applied;

- TASK 2: CARD SPENDING ANALYSIS
  
-- Check available payment methods
SELECT DISTINCT Payment_Method
FROM shopping_table;


-- 1. Card spending by age group
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS card_orders,
    ROUND(AVG(Purchase_Amount_USD), 2) AS avg_card_spend,
    ROUND(SUM(Purchase_Amount_USD), 2) AS total_card_spend
FROM shopping_table
WHERE Payment_Method IN ('Credit Card', 'Debit Card')
GROUP BY age_group
ORDER BY total_card_spend DESC;

- 2. Card spending by season
SELECT
    Season,
    COUNT(*) AS card_orders,
    ROUND(AVG(Purchase_Amount_USD), 2) AS avg_card_spend,
    ROUND(SUM(Purchase_Amount_USD), 2) AS total_card_spend
FROM shopping_table
WHERE Payment_Method IN ('Credit Card', 'Debit Card')
GROUP BY Season
ORDER BY total_card_spend DESC;


-- 3. Card spending by location
SELECT
    Location,
    COUNT(*) AS card_orders,
    ROUND(SUM(Purchase_Amount_USD), 2) AS total_card_spend,
    ROUND(AVG(Purchase_Amount_USD), 2) AS avg_card_spend
FROM shopping_table
WHERE Payment_Method IN ('Credit Card', 'Debit Card')
GROUP BY Location
ORDER BY total_card_spend DESC
LIMIT 10;

-- =========================================
-- TASK 3: DATA EXTRACTION FOR CLUSTERING
-- =========================================

SELECT
    Age,
    Purchase_Amount_USD,
    Review_Rating,
    Previous_Purchases,
    Discount_Applied,
    Subscription_Status
FROM shopping_table;
