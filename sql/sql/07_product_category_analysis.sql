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

FROM olist_order_items_dataset oi

JOIN olist_products_dataset p
    ON oi.product_id = p.product_id

LEFT JOIN product_category_name_translation t
    ON p.product_category_name =
       t.product_category_name

GROUP BY category

ORDER BY total_sales DESC

LIMIT 10;
