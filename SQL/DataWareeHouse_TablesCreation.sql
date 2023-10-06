--- Customer Dim Creation : 

CREATE TABLE [dbo].[CustomerDim](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerEmail] [varchar](50) NULL,
	[CustomerAddress] [varchar](100) NULL,
	[CustomerPhone] [varchar](100) NULL,
	[CustomerSegment] [varchar](50) NULL
) ON [PRIMARY];

ALTER TABLE [dbo].[CustomerDim] ADD PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY];


--- DateDim Creation : 

CREATE TABLE [dbo].[DateDim](
	[DateID] [int] NOT NULL,
	[Date] [varchar](10) NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Day] [int] NULL
) ON [PRIMARY];

ALTER TABLE [dbo].[DateDim] ADD PRIMARY KEY CLUSTERED 
(
	[DateID] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY];

--- ProductDimCreation : 

CREATE TABLE [dbo].[ProductDim](
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductCategory] [varchar](50) NULL,
	[ProductSubCategory] [varchar](50) NULL
) ON [PRIMARY];

ALTER TABLE [dbo].[ProductDim] ADD PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY] ;


--- ShipperDimCreation : 

CREATE TABLE [dbo].[ShipperDim](
	[ShipperID] [int] NOT NULL,
	[ShipperName] [varchar](50) NULL,
	[ShippingMethod] [varchar](50) NULL
) ON [PRIMARY];

ALTER TABLE [dbo].[ShipperDim] ADD PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
 ON [PRIMARY] ;

--- SupplierDim 
CREATE TABLE [dbo].[SupplierDim](
	[SupplierID] [int] NOT NULL,
	[SupplierName] [varchar](50) NULL,
	[SupplierLocation] [varchar](100) NULL,
	[SupplierContact] [varchar](50) NULL
) ON [PRIMARY] ;

ALTER TABLE [dbo].[SupplierDim] ADD PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY];








