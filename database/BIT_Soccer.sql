USE [master]
GO
/****** Object:  Database [BIT_Soccer]    Script Date: 5/25/2020 1:54:41 AM ******/
CREATE DATABASE [BIT_Soccer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BIT_Soccer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BIT_Soccer.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BIT_Soccer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BIT_Soccer_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BIT_Soccer] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BIT_Soccer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BIT_Soccer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BIT_Soccer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BIT_Soccer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BIT_Soccer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BIT_Soccer] SET ARITHABORT OFF 
GO
ALTER DATABASE [BIT_Soccer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BIT_Soccer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BIT_Soccer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BIT_Soccer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BIT_Soccer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BIT_Soccer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BIT_Soccer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BIT_Soccer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BIT_Soccer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BIT_Soccer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BIT_Soccer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BIT_Soccer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BIT_Soccer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BIT_Soccer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BIT_Soccer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BIT_Soccer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BIT_Soccer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BIT_Soccer] SET RECOVERY FULL 
GO
ALTER DATABASE [BIT_Soccer] SET  MULTI_USER 
GO
ALTER DATABASE [BIT_Soccer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BIT_Soccer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BIT_Soccer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BIT_Soccer] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BIT_Soccer] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BIT_Soccer', N'ON'
GO
USE [BIT_Soccer]
GO
/****** Object:  Table [dbo].[About]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[AboutName] [nvarchar](250) NULL,
	[AboutMetaTitile] [nvarchar](50) NULL,
	[AboutDescription] [nvarchar](50) NULL,
	[AbountImage] [nvarchar](50) NULL,
	[AbountDetailID] [int] NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AboutDetail]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutDetail](
	[AboutDetailID] [int] NOT NULL,
	[AboutDetailName] [nvarchar](50) NULL,
	[AboutDetail] [ntext] NULL,
 CONSTRAINT [PK_AboutDetail] PRIMARY KEY CLUSTERED 
(
	[AboutDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varbinary](250) NULL,
	[ParentID] [int] NULL,
	[Quantity] [int] NULL,
	[Prices] [decimal](18, 0) NULL,
	[PromotionPrices] [decimal](18, 0) NULL,
	[Image] [nvarchar](250) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Age] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[TimeDuration] [nvarchar](50) NULL,
	[PartsOfDay] [nvarchar](50) NULL,
	[ClassDetailID] [int] NULL,
	[CoachDetailID] [int] NULL,
	[ClassCategoryID] [int] NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[ViewsCount] [int] NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClassCategory]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassCategory](
	[ClassCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ClassCategoryName] [nvarchar](250) NULL,
	[ClassCategoryMetaTitle] [nvarchar](50) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[ClassCateSeoTitle] [nvarchar](250) NULL,
 CONSTRAINT [PK_ClassCategory] PRIMARY KEY CLUSTERED 
(
	[ClassCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassDetail]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassDetail](
	[ClassDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ClassDetailName] [nvarchar](250) NULL,
	[ClassDetailDescription] [ntext] NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ClassDetail] PRIMARY KEY CLUSTERED 
(
	[ClassDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Coach]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[CoachID] [int] IDENTITY(1,1) NOT NULL,
	[CoachDetailID] [int] NULL,
	[CoachName] [nvarchar](250) NULL,
	[BirthDay] [date] NULL,
	[Phone] [nchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[PassPort] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Detail] [nvarchar](250) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Coach] PRIMARY KEY CLUSTERED 
(
	[CoachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CoachDetail]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoachDetail](
	[CoachDetailID] [int] IDENTITY(1,1) NOT NULL,
	[CoachDetailName] [nvarchar](250) NULL,
	[CoachDetailDescription] [nvarchar](max) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CoachMoment]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoachMoment](
	[MomentID] [int] IDENTITY(1,1) NOT NULL,
	[MomentDescription] [nvarchar](250) NULL,
	[MomentImage] [nvarchar](250) NULL,
 CONSTRAINT [PK_CoachMoment] PRIMARY KEY CLUSTERED 
(
	[MomentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[ContactName] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContentCategory]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentCategory](
	[Cont] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuTypeID] [int] NULL,
	[MenuName] [nvarchar](50) NULL,
	[MenuLink] [nvarchar](50) NULL,
	[MenuDisplayOrder] [int] NULL,
	[MenuTarget] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[MenuTypeID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[MenuTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[New]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New](
	[NewID] [int] IDENTITY(1,1) NOT NULL,
	[NewName] [nvarchar](250) NULL,
	[NewMetaTitile] [nvarchar](250) NULL,
	[NewDescription] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[ViewsCount] [int] NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[Tags] [nvarchar](500) NULL,
 CONSTRAINT [PK_New] PRIMARY KEY CLUSTERED 
(
	[NewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewCategory]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewCategory](
	[NewCateID] [int] IDENTITY(1,1) NOT NULL,
	[NewCateName] [nvarchar](250) NULL,
	[NewCateMetaTitle] [nvarchar](250) NULL,
	[NewCateSeoTitle] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[CreatedDate] [date] NULL,
 CONSTRAINT [PK_NewCategory] PRIMARY KEY CLUSTERED 
(
	[NewCateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewTagNew]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewTagNew](
	[NewID] [int] NOT NULL,
	[TagNewID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NewTagNew] PRIMARY KEY CLUSTERED 
(
	[NewID] ASC,
	[TagNewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slide]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[SlideID] [int] IDENTITY(1,1) NOT NULL,
	[SlideImage] [nvarchar](250) NULL,
	[SlideDisplayOrder] [int] NULL,
	[SlideLink] [nvarchar](250) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[SlideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TagNew]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagNew](
	[TagNewID] [nvarchar](50) NOT NULL,
	[TagNewName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TagNew] PRIMARY KEY CLUSTERED 
(
	[TagNewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tourament]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tourament](
	[TouramentID] [int] IDENTITY(1,1) NOT NULL,
	[TourCateID] [int] NULL,
	[TeamA] [nvarchar](50) NULL,
	[TeamB] [nvarchar](50) NULL,
	[TourTime] [date] NULL,
	[Scores] [nvarchar](50) NULL,
	[Stadium] [nvarchar](50) NULL,
	[TourImage] [nvarchar](250) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetakeyWords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Tourament] PRIMARY KEY CLUSTERED 
(
	[TouramentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TouramentCategory]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouramentCategory](
	[TourCateID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TouramentCategory] PRIMARY KEY CLUSTERED 
(
	[TourCateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Class_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Class_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ClassCategory] ADD  CONSTRAINT [DF_ClassCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ClassCategory] ADD  CONSTRAINT [DF_ClassCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ClassDetail] ADD  CONSTRAINT [DF_ClassDetail_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ClassDetail] ADD  CONSTRAINT [DF_ClassDetail_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Coach] ADD  CONSTRAINT [DF_Coach_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Coach] ADD  CONSTRAINT [DF_Coach_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[CoachDetail] ADD  CONSTRAINT [DF_CoachDetail_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CoachDetail] ADD  CONSTRAINT [DF_CoachDetail_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[New] ADD  CONSTRAINT [DF_New_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[New] ADD  CONSTRAINT [DF_New_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[NewCategory] ADD  CONSTRAINT [DF_NewCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[NewCategory] ADD  CONSTRAINT [DF_NewCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Tourament] ADD  CONSTRAINT [DF_Tourament_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Tourament] ADD  CONSTRAINT [DF_Tourament_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBillInfo]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_InsertBillInfo]
@bill_id INT , @quantity int, @services_id NVARCHAR(20)
AS	
BEGIN
	DECLARE @IsExistBillInfo INT
	DECLARE @servquantity int =1 

	SELECT @IsExistBillInfo = a.Bill_detail_ID , @servquantity = a.Quantity_Services
	FROM dbo.Bill_Detail a
	WHERE a.Bill_ID = @bill_id AND a.Services_ID = @services_id
	IF (@IsExistBillInfo > 0)
		BEGIN
			DECLARE @NewServQuantity INT = @servquantity + @quantity
			IF (@NewServQuantity >0)
				UPDATE dbo.Bill_Detail SET Quantity_Services = @quantity + @servquantity
				WHERE  Services_ID = @services_id 
			ELSE 
				DELETE dbo.Bill_Detail WHERE Bill_ID = @bill_id AND Services_ID = @services_id
		END
	ELSE
	BEGIN
		INSERT dbo.Bill_Detail (Quantity_Services , Services_ID , Bill_ID )
		VALUES  (  @quantity , @services_id ,@bill_id )
		DECLARE @ConfirmQuantity INT = @quantity 
		IF (@ConfirmQuantity <0)
			BEGIN
				DELETE dbo.Bill_Detail WHERE Bill_ID = @bill_id AND Services_ID = @services_id
			END
	END 
END

GO
/****** Object:  StoredProcedure [dbo].[USP_LoadRoomList]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Tạo Proce lấy RoomList--
CREATE PROC [dbo].[USP_LoadRoomList]
AS SELECT Room_number, Room_Type_Name , Room_stat_ID , Room_ID
FROM dbo.Room JOIN dbo.Room_Type ON Room_Type.Room_Type_ID = Room.Room_Type_ID

EXECUTE dbo.USP_LoadRoomList

GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 5/25/2020 1:54:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tạo Proce Login cho chức năng đăng nhập--
CREATE PROC	[dbo].[USP_Login]
@userName nvarchar (100) , @passWord nvarchar (100) 
AS 
BEGIN
	SELECT * FROM dbo.Account WHERE	UserName = @userName AND password = @passWord
END

EXECUTE dbo.USP_Login @userName = N'admin', @passWord = N'1'

GO
USE [master]
GO
ALTER DATABASE [BIT_Soccer] SET  READ_WRITE 
GO
