--Query 1: order detail join
SELECT 
    o.order_id,
    o.order_date,
    c.customer_id,
    c.customer_name,
    c.email,
    c.province,
    p.product_id,
    p.product_name,
    p.category,
    p.unit_price,
    o.quantity,
    (o.quantity * p.unit_price) AS total_amount
FROM ORDERS o
JOIN CUSTOMERS c 
    ON o.customer_id = c.customer_id
JOIN PRODUCTS p 
    ON o.product_id = p.product_id;
