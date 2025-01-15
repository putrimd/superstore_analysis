USE [superstore_sales]
GO

/****** Object:  Table [dbo].[orders]    Script Date: 1/15/2025 2:17:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[orders](
	[corrected_order_id] [nvarchar](50) NOT NULL,
	[Order_ID] [nvarchar](50) NOT NULL,
	[Order_Date] [datetime] NOT NULL,
	[corrected_customer_id] [nvarchar](50) NOT NULL,
	[Customer_ID] [nvarchar](50) NOT NULL,
	[Ship_Date] [date] NULL,
	[Ship_Mode] [nvarchar](50) NULL,
	[Market] [nvarchar](50) NULL,
	[Order_Priority] [nvarchar](20) NULL,
	[Delivery_Days] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[corrected_order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([corrected_customer_id])
REFERENCES [dbo].[customers] ([corrected_customer_id])
GO

ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO

