WITH delduplicates AS (
    SELECT 
        [Customer_ID],
		[Customer_Name],
		[Segment],
		[corrected_customer_id],
        ROW_NUMBER() OVER (PARTITION BY   
		[Customer_ID],
		[Customer_Name],
		[Segment],
		[corrected_customer_id] ORDER BY [corrected_customer_id]) AS RowNum
    FROM customers
)
DELETE FROM delduplicates
WHERE RowNum > 1;
