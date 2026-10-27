WITH daily_sales AS (
    SELECT
        DATE(o.order_purchase_timestamp) AS order_date,

        COUNT(DISTINCT o.order_id) AS total_orders,

        SUM(p.payment_value) AS total_payments

    FROM olist_orders_dataset o

    JOIN olist_order_payments_dataset p
        ON o.order_id = p.order_id

    WHERE o.order_purchase_timestamp >= '2017-11-01'
      AND o.order_purchase_timestamp < '2017-12-01'

    GROUP BY DATE(o.order_purchase_timestamp)
)

SELECT
    ROUND(
        AVG(
            CASE
                WHEN order_date != '2017-11-24'
                THEN total_payments
            END
        ),
        2
    ) AS average_normal_day_payments,

    ROUND(
        MAX(
            CASE
                WHEN order_date = '2017-11-24'
                THEN total_payments
            END
        ),
        2
    ) AS black_friday_payments,

    ROUND(
        100.0 * (
            MAX(
                CASE
                    WHEN order_date = '2017-11-24'
                    THEN total_payments
                END
            )
            /
            NULLIF(
                AVG(
                    CASE
                        WHEN order_date != '2017-11-24'
                        THEN total_payments
                    END
                ),
                0
            )
            - 1
        ),
        2
    ) AS black_friday_increase_percentage

FROM daily_sales;
