-- ==========================================
-- PROJECT: E-Commerce Sales Analysis
-- ANALYSIS: Top 10 Customers by Spending
-- DATABASE: SQLite
-- ==========================================

-- Business Question:
-- Which customers have the highest
-- recorded payment values?

SELECT
    c.customer_unique_id,

    COUNT(DISTINCT o.order_id) AS total_orders,

    ROUND(
        SUM(p.payment_value),
        2
    ) AS total_spent

FROM olist_customers_dataset c

JOIN olist_orders_dataset o
    ON c.customer_id = o.customer_id

JOIN olist_order_payments_dataset p
    ON o.order_id = p.order_id

GROUP BY c.customer_unique_id

ORDER BY total_spent DESC

LIMIT 10;
