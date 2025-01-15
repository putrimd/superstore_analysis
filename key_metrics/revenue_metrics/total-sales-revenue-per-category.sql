-- Sales Revenue by Product Category

SELECT p.category, p.sub_category, SUM(od.Sales) AS Category_Revenue
FROM OrderDetails od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.category, p.Sub_Category
order by category_revenue desc --sorted by greater value of category_revenue
