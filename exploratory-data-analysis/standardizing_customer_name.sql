-- solving inconsistencies customer_name. There are customer_name with hypen '-'which are not allowed due to standarization data.
-- Update customer_name by replacing hyphen with a space

UPDATE Customers
SET customer_name = REPLACE(customer_name, '-', ' ')
WHERE customer_name LIKE '%-%';  -- Ensures only customers with a hyphen are updated
