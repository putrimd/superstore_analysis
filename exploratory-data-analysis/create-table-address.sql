CREATE TABLE Address (
    loc_id INT IDENTITY(1,1) PRIMARY KEY,
    corrected_customer_id NVARCHAR(50),
    corrected_order_id NVARCHAR(50),
    city NVARCHAR(255),
    state NVARCHAR(255),
    country NVARCHAR(255),
    region NVARCHAR(255),


    CONSTRAINT FK_Address_Customers FOREIGN KEY (corrected_customer_id) 
        REFERENCES Customers(Corrected_Customer_ID),
    CONSTRAINT FK_Address_Orders FOREIGN KEY (corrected_order_id) 
        REFERENCES Orders(corrected_order_id) 
);
