SELECT
    oi.product_id,
    COUNT(*) AS units_sold,
    ROUND(SUM(oi.price), 2) AS total_sales
FROM olist_order_items_dataset oi
GROUP BY oi.product_id
ORDER BY units_sold DESC
LIMIT 10;
