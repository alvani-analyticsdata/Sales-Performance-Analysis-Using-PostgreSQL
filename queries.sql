
SELECT
    c.country,
    SUM(oi.quantity * p.unit_price) AS revenue,
    ROUND(
        100.0 * SUM(oi.quantity * p.unit_price)
        / SUM(SUM(oi.quantity * p.unit_price)) OVER (),
        2
    ) AS revenue_percentage
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.country
ORDER BY revenue DESC;
