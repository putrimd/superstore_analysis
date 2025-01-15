CREATE TABLE OrderDetails (
    corrected_customer_id NVARCHAR(50) NOT NULL,
    corrected_order_id NVARCHAR(50) NOT NULL,
    product_id NVARCHAR(50) NOT NULL,
    Sales FLOAT NOT NULL,
    Quantity FLOAT NOT NULL,
    Discount FLOAT NOT NULL,
    Profit FLOAT NOT NULL,
    Shipping_Cost FLOAT NOT NULL,

    CONSTRAINT FK_OrderDetails_Customers FOREIGN KEY (corrected_customer_id)
        REFERENCES Customers (corrected_customer_id),
    CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (corrected_order_id)
        REFERENCES Orders (corrected_order_id)
);
