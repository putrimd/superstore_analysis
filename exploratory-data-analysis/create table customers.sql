USE [superstore_sales]
GO

/****** Object:  Table [dbo].[customers]    Script Date: 1/15/2025 2:17:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customers](
	[corrected_customer_id] [nvarchar](50) NOT NULL,
	[Customer_ID] [nvarchar](255) NOT NULL,
	[Customer_Name] [nvarchar](255) NOT NULL,
	[Segment] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[corrected_customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

