-- Sales Revenue Per Customer
SELECT od.corrected_customer_id, c.Customer_Name, SUM(od.sales) as Total_Sales_Revenue
FROM OrderDetails od
inner join customers c on od.corrected_customer_id = c.corrected_customer_id
group by od.corrected_customer_id, c.customer_name
order by Total_Sales_Revenue desc --Data sorted by greater revenue per customer
