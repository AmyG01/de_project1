--Query 3: revenue per category
SELECT 
    p.category,
    SUM(o.quantity * p.unit_price) AS total_revenue
FROM ORDERS o
JOIN PRODUCTS p 
    ON o.product_id = p.product_id
GROUP BY 
    p.category
ORDER BY total_revenue DESC;