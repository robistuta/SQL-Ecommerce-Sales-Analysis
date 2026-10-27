-- ==========================================
-- PROJECT: E-Commerce Sales Analysis
-- ANALYSIS: Customer Repeat Purchase Rate
-- DATABASE: SQLite
-- ==========================================

-- Business Question:
-- What percentage of customers
-- placed more than one order?

WITH customer_orders AS (

    SELECT
        c.customer_unique_id,

        COUNT(DISTINCT o.order_id)
            AS total_orders

    FROM olist_customers_dataset c

    JOIN olist_orders_dataset o
        ON c.customer_id = o.customer_id

    GROUP BY c.customer_unique_id

)

SELECT
    COUNT(*) AS total_customers,

    SUM(
        CASE
            WHEN total_orders > 1 THEN 1
            ELSE 0
        END
    ) AS repeat_customers,

    ROUND(
        100.0 * SUM(
            CASE
                WHEN total_orders > 1 THEN 1
                ELSE 0
            END
        ) / NULLIF(COUNT(*), 0),
        2
    ) AS repeat_purchase_rate

FROM customer_orders;
