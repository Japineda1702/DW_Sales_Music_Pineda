USE [DW_Sales_Music]
GO
/****** Object:  Table [dbo].[Dim_Album]    Script Date: 15/02/2022 2:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Album](
	[AlbumId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](160) NULL,
 CONSTRAINT [PK_Dim_Album] PRIMARY KEY CLUSTERED 
(
	[AlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Artist]    Script Date: 15/02/2022 2:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Artist](
	[ArtistId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](120) NULL,
 CONSTRAINT [PK_Dim_Artist] PRIMARY KEY CLUSTERED 
(
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Customer]    Script Date: 15/02/2022 2:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](40) NULL,
	[LastName] [varchar](20) NULL,
	[Company] [varchar](80) NULL,
	[Address] [varchar](70) NULL,
	[City] [varchar](40) NULL,
	[State] [varchar](40) NULL,
	[Country] [varchar](40) NULL,
	[PostalCode] [varchar](10) NULL,
	[Phone] [varchar](24) NULL,
	[Fax] [varchar](24) NULL,
	[Email] [varchar](60) NULL,
 CONSTRAINT [PK_Dim_customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Employee]    Script Date: 15/02/2022 2:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](20) NULL,
	[FirstName] [varchar](20) NULL,
	[Title] [varchar](30) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [varchar](70) NULL,
	[City] [varchar](40) NULL,
	[State] [varchar](40) NULL,
	[Country] [varchar](40) NULL,
	[PostalCodeE] [varchar](10) NULL,
	[Phone] [varchar](24) NULL,
	[Fax] [varchar](24) NULL,
	[Email] [varchar](60) NULL,
 CONSTRAINT [PK_Dim_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Genre]    Script Date: 15/02/2022 2:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Genre](
	[GenreId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](120) NULL,
 CONSTRAINT [PK_Dim_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Invoice_Item]    Script Date: 15/02/2022 2:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Invoice_Item](
	[InvoiceItemID] [int] IDENTITY(1,1) NOT NULL,
	[UnitPrice] [numeric](10, 2) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Dim_Invoice_Items] PRIMARY KEY CLUSTERED 
(
	[InvoiceItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Location]    Script Date: 15/02/2022 2:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceDate] [datetime] NULL,
	[BillingAddress] [varchar](70) NULL,
	[BillingCity] [varchar](40) NULL,
	[BillingState] [varchar](40) NULL,
	[BillingCountry] [varchar](40) NULL,
	[BillingPostalCode] [varchar](10) NULL,
	[Total] [numeric](10, 2) NULL,
 CONSTRAINT [PK_Dim_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Playlist]    Script Date: 15/02/2022 2:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Playlist](
	[PlaylistId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](120) NULL,
 CONSTRAINT [PK_Dim_Playlist] PRIMARY KEY CLUSTERED 
(
	[PlaylistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Time]    Script Date: 15/02/2022 2:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Time](
	[TimeId] [int] IDENTITY(1,1) NOT NULL,
	[day] [int] NULL,
	[day_of_the_week] [varchar](15) NULL,
	[month] [int] NULL,
	[quarter] [int] NULL,
	[year] [int] NULL,
 CONSTRAINT [PK_Dim_Time] PRIMARY KEY CLUSTERED 
(
	[TimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
