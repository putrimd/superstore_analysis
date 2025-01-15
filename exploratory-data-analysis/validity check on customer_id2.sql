WITH Validity AS (
    SELECT 
        customer_id,
        CASE
            WHEN customer_id = [Corrected_Customer_ID]
            THEN 'No correction'
            ELSE 'Corrected'
        END AS [Validity_Customer_ID]
    FROM [superstore_sales].[dbo].[customers]
)
SELECT 
    c.customer_id, 
    c.customer_name,
	c.segment,
	c.corrected_customer_id,
    v.[Validity_Customer_ID]
FROM [superstore_sales].[dbo].[customers] c
JOIN Validity v ON c.customer_id = v.customer_id
WHERE v.[Validity_Customer_ID] = 'Corrected'
