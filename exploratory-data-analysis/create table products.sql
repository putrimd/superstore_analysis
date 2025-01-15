USE [superstore_sales]
GO

/****** Object:  Table [dbo].[products]    Script Date: 1/15/2025 2:18:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[products](
	[Product_ID] [nvarchar](255) NOT NULL,
	[Product_Name] [nvarchar](255) NOT NULL,
	[Category] [nvarchar](255) NOT NULL,
	[Sub_Category] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

