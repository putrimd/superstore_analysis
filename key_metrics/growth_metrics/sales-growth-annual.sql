--Sales Growth each Year

SELECT YEAR(order_date) AS Year, SUM(od.Sales) AS Total_Sales
FROM OrderDetails od
JOIN orders o ON od.corrected_order_id2 = o.corrected_order_id2
GROUP BY YEAR(o.order_date)
ORDER BY Year;
