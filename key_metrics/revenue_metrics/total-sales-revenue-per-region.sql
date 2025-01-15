-- Total Sales by Region

SELECT a.region, SUM(od.Sales) AS Region_Revenue
FROM OrderDetails od
JOIN address a ON od.corrected_customer_id = a.corrected_customer_id
GROUP BY a.region
order by region_revenue desc --sorted by greater value of region_revenue
