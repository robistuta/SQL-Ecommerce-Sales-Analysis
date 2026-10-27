SELECT
    DATE(o.order_purchase_timestamp) AS order_date,

    COUNT(DISTINCT o.order_id) AS total_orders,

    ROUND(
        SUM(p.payment_value),
        2
    ) AS total_payments

FROM olist_orders_dataset o

JOIN olist_order_payments_dataset p
    ON o.order_id = p.order_id

WHERE o.order_purchase_timestamp >= '2017-11-01'
  AND o.order_purchase_timestamp < '2017-12-01'

GROUP BY DATE(o.order_purchase_timestamp)

ORDER BY total_payments DESC;
