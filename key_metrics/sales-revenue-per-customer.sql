-- Sales Per Customer
SELECT corrected_customer_id, SUM(Sales) AS Customer_Revenue
FROM OrderDetails
GROUP BY corrected_customer_id;
