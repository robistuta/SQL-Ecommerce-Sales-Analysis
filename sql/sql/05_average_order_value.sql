WITH order_payments AS (
    SELECT
        order_id,
        SUM(payment_value) AS order_total
    FROM olist_order_payments_dataset
    GROUP BY order_id
)

SELECT
    ROUND(
        AVG(order_total),
        2
    ) AS average_order_value
FROM order_payments;
