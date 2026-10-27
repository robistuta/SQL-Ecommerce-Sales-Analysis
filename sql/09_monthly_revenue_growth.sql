-- ==========================================
-- PROJECT: E-Commerce Sales Analysis
-- ANALYSIS: Monthly Payment Growth
-- DATABASE: SQLite
-- ==========================================

-- Business Question:
-- What is the month-over-month
-- growth rate in recorded payments?

WITH monthly_sales AS (

    SELECT
        strftime(
            '%Y-%m',
            o.order_purchase_timestamp
        ) AS month,

        ROUND(
            SUM(p.payment_value),
            2
        ) AS total_payments

    FROM olist_orders_dataset o

    JOIN olist_order_payments_dataset p
        ON o.order_id = p.order_id

    GROUP BY
        strftime(
            '%Y-%m',
            o.order_purchase_timestamp
        )

),

monthly_growth AS (

    SELECT
        month,
        total_payments,

        LAG(total_payments) OVER (
            ORDER BY month
        ) AS previous_month_payments

    FROM monthly_sales

)

SELECT
    month,
    total_payments,
    previous_month_payments,

    ROUND(
        100.0 *
        (total_payments - previous_month_payments)
        / NULLIF(previous_month_payments, 0),
        2
    ) AS growth_percentage

FROM monthly_growth

ORDER BY month;
