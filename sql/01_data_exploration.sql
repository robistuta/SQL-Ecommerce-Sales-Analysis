-- PROJECT: E-Commerce Sales Analysis
-- TOOL: SQLite
-- DATASET: Brazilian E-Commerce by Olist

-- =====================================
-- 1. VIEW CUSTOMER DATA
-- =====================================

SELECT *
FROM olist_customers_dataset
LIMIT 10;


-- =====================================
-- 2. VIEW ORDER DATA
-- =====================================

SELECT *
FROM olist_orders_dataset
LIMIT 10;


-- =====================================
-- 3. COUNT UNIQUE CUSTOMERS
-- =====================================

SELECT
    COUNT(DISTINCT customer_unique_id)
        AS total_customers
FROM olist_customers_dataset;


-- =====================================
-- 4. COUNT TOTAL ORDERS
-- =====================================

SELECT
    COUNT(DISTINCT order_id)
        AS total_orders
FROM olist_orders_dataset;


-- ====================================
-- 5. CHECK MISSING DELIVERY DATES
-- ====================================

SELECT
    COUNT(*) AS total_orders,

    SUM(
        CASE
            WHEN order_delivered_customer_date IS NULL
            THEN 1
            ELSE 0
        END
    ) AS missing_delivery_dates

FROM olist_orders_dataset;


-- =====================================
-- 6. CHECK DUPLICATE ORDER IDs
-- =====================================

SELECT
    order_id,
    COUNT(*) AS duplicate_count
FROM olist_orders_dataset
GROUP BY order_id
HAVING COUNT(*) > 1;
