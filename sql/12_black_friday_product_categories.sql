SELECT
    COALESCE(
        t.product_category_name_english,
        p.product_category_name,
        'Unknown'
    ) AS category,

    COUNT(*) AS units_sold,

    ROUND(
        SUM(oi.price),
        2
    ) AS total_sales

FROM olist_orders_dataset o

JOIN olist_order_items_dataset oi
    ON o.order_id = oi.order_id

JOIN olist_products_dataset p
    ON oi.product_id = p.product_id

LEFT JOIN product_category_name_translation t
    ON p.product_category_name =
       t.product_category_name

WHERE o.order_purchase_timestamp >= '2017-11-24'
  AND o.order_purchase_timestamp < '2017-11-25'

GROUP BY category

ORDER BY total_sales DESC

LIMIT 10;
