--standardizing inconsistencies of customer_id using format First letter of First Name and Last Name-Numeric part of original customer_id
--for example : corrected_customer_id AA-10315102 for customer_name Alex Avila

UPDATE Customers
SET Corrected_Customer_ID = CONCAT(
    UPPER(LEFT(Customer_Name, 1)),                                  -- First letter of the first name
    UPPER(LEFT(SUBSTRING(Customer_Name, CHARINDEX(' ', Customer_Name) + 1, LEN(Customer_Name)), 1)), -- First letter of the last name
    '-',
    RIGHT(Customer_ID, CHARINDEX('-', REVERSE(Customer_ID)) - 1)   -- Extract the numeric part of the original Customer_ID
);
