1. CUSTOMER REVENUE
SELECT 
    bd.customer_id,
    SUM(bd.revenue) AS total_revenue
FROM basket_details bd
GROUP BY bd.customer_id
ORDER BY total_revenue DESC;

2. CUSTOMER SEGMENTS
WITH customer_revenue AS (
    SELECT 
        customer_id,
        SUM(revenue) AS total_revenue
    FROM basket_details
    GROUP BY customer_id
)

SELECT 
    customer_id,
    total_revenue,
    CASE 
        WHEN total_revenue < 1000 THEN 'Low Value'
        WHEN total_revenue BETWEEN 1000 AND 3000 THEN 'Medium Value'
        ELSE 'High Value'
    END AS customer_segment
FROM customer_revenue
ORDER BY total_revenue DESC;

3. AVERAGE BASKET SIZE PER SEGMENT
WITH customer_segments AS (
    SELECT 
        customer_id,
        CASE 
            WHEN SUM(revenue) < 1000 THEN 'Low Value'
            WHEN SUM(revenue) BETWEEN 1000 AND 3000 THEN 'Medium Value'
            ELSE 'High Value'
        END AS customer_segment
    FROM basket_details
    GROUP BY customer_id
)

SELECT 
    cs.customer_segment,
    AVG(bd.quantity) AS avg_basket_size
FROM basket_details bd
JOIN customer_segments cs 
    ON bd.customer_id = cs.customer_id
GROUP BY cs.customer_segment;

4. REVENUE BY SEGMENT
WITH customer_segments AS (
    SELECT 
        customer_id,
        CASE 
            WHEN SUM(revenue) < 1000 THEN 'Low Value'
            WHEN SUM(revenue) BETWEEN 1000 AND 3000 THEN 'Medium Value'
            ELSE 'High Value'
        END AS customer_segment
    FROM basket_details
    GROUP BY customer_id
)

SELECT 
    cs.customer_segment,
    SUM(bd.revenue) AS segment_revenue
FROM basket_details bd
JOIN customer_segments cs
    ON bd.customer_id = cs.customer_id
GROUP BY cs.customer_segment;

5. TOP 10 CUSTOMERS
SELECT 
    customer_id,
    SUM(revenue) AS total_revenue
FROM basket_details
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;
