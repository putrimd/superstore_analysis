-- Identify 10 Highest Profitable Customers per Year

WITH ProfitableCustomers AS (
    SELECT 
        YEAR(o.order_date) AS Year, 
        od.corrected_customer_id, 
        c.customer_name, 
		SUM(od.sales) as TotalSales,
        SUM(od.Profit) AS TotalProfit,
        RANK() OVER (PARTITION BY YEAR(o.order_date) ORDER BY SUM(od.Profit) DESC) AS Rank
    FROM orderDetails od

    INNER JOIN orders o ON od.corrected_order_id2 = o.corrected_order_id2
    INNER JOIN customers c ON od.corrected_customer_id = c.corrected_customer_id
    GROUP BY YEAR(o.order_date), od.corrected_customer_id, c.customer_name
)

SELECT Rank, Year, corrected_customer_id, customer_name, TotalSales, TotalProfit
FROM ProfitableCustomers
WHERE Rank <= 10
ORDER BY Year asc


-- Identify 10 Highest Profitable Products per Year

WITH ProfitableProducts AS (
    SELECT 
        YEAR(o.order_date) AS Year, 
        p.product_name,
		p.category,
		SUM(od.sales) as TotalSales,
        SUM(od.Profit) AS TotalProfit,
        RANK() OVER (PARTITION BY YEAR(o.order_date) ORDER BY SUM(od.Profit) DESC) AS Rank
    FROM orderDetails od

    INNER JOIN orders o ON od.corrected_order_id2 = o.corrected_order_id2
    INNER JOIN products p ON od.product_id = p.Product_ID
    GROUP BY YEAR(o.order_date), p.Product_Name, p.Category
)

SELECT Rank, Year, product_name, category, TotalSales, TotalProfit
FROM ProfitableProducts
WHERE Rank <= 10
ORDER BY Year asc


