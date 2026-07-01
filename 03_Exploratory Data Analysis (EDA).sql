SELECT
    YEAR(order_date_new) AS year,
    MONTH(order_date_new) AS month,
    ROUND(SUM(Sales),2) AS total_sales
FROM superstore_clean
GROUP BY
    YEAR(order_date_new),
    MONTH(order_date_new)
ORDER BY year, month;