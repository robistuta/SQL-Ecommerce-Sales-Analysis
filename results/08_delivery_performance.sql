SELECT
    COUNT(*) AS total_delivered_orders,

    SUM(
        CASE
            WHEN order_delivered_customer_date >
                 order_estimated_delivery_date
            THEN 1
            ELSE 0
        END
    ) AS late_deliveries,

    ROUND(
        100.0 * SUM(
            CASE
                WHEN order_delivered_customer_date >
                     order_estimated_delivery_date
                THEN 1
                ELSE 0
            END
        ) / NULLIF(COUNT(*), 0),
        2
    ) AS late_delivery_percentage

FROM olist_orders_dataset

WHERE order_status = 'delivered'

AND order_delivered_customer_date IS NOT NULL

AND order_estimated_delivery_date IS NOT NULL;
