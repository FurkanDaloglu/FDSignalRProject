USE [DbFDSignalRProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Baskets]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baskets](
	[BasketID] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Count] [decimal](18, 2) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[ProductID] [int] NOT NULL,
	[MenuTableID] [int] NOT NULL,
 CONSTRAINT [PK_Baskets] PRIMARY KEY CLUSTERED 
(
	[BasketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[PersonCount] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[CategoryStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[FooterDescription] [nvarchar](max) NULL,
	[FooterTitle] [nvarchar](max) NULL,
	[OpenDays] [nvarchar](max) NULL,
	[OpenDaysDescription] [nvarchar](max) NULL,
	[OpenHours] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[DiscountID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Amount] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Discounts] PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[FeatureID] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [nvarchar](max) NULL,
	[Description1] [nvarchar](max) NULL,
	[Title2] [nvarchar](max) NULL,
	[Description2] [nvarchar](max) NULL,
	[Title3] [nvarchar](max) NULL,
	[Description3] [nvarchar](max) NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuTables]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuTables](
	[MenuTableID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MenuTables] PRIMARY KEY CLUSTERED 
(
	[MenuTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[MessageContent] [nvarchar](max) NULL,
	[MessageSendDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoneyCases]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoneyCases](
	[MoneyCaseID] [int] IDENTITY(1,1) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_MoneyCases] PRIMARY KEY CLUSTERED 
(
	[MoneyCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Icon] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[TableNumber] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[OrderDate] [date] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ProductStatus] [bit] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[SliderID] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [nvarchar](max) NOT NULL,
	[Title2] [nvarchar](max) NOT NULL,
	[Title3] [nvarchar](max) NOT NULL,
	[Description1] [nvarchar](max) NULL,
	[Description2] [nvarchar](max) NULL,
	[Description3] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedias]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedias](
	[SocialMediaID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
 CONSTRAINT [PK_SocialMedias] PRIMARY KEY CLUSTERED 
(
	[SocialMediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 13.05.2024 22:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240403030856_initialize', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240405074521_mig_relation_category_product', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410100942_mig_add_order_orderDetail', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410115238_mig_add_moneyCase', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410141329_mig_rev_datetime', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410141915_mig_add_menutable', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240412131727_mig_add_slider', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240413030659_mig_add_contact_new_columbs', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240413104910_mig_add_basket', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240417210005_mig_add_notification', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240426134250_mig_add_identity', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240430225310_mig_add_discount_status', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240502220441_mig_add_message_table', N'8.0.3')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutID], [ImageUrl], [Title], [Description]) VALUES (3, N'/feane-1.0.0/images/about-img.png', N'Lezzetin Adresi', N'FD Restoran müşterilerine daima en iyi hizmeti ve sunumu gerçekleştirmek için 2010 yılından beri değişmeyen tek yerinde siz değerli müşterilerine devamlı yenilikçi zengin menüsü ile hizmet vermeye devam etmektedir.

Özenli hizmet, güleryüzlü servis, uygun fiyatlar ve tadına doyulmaz bir yemek keyfi için FD Restoran, hem kapalı hem açık alanlara sahip olmanın avantajıyla dört mevsim boyunca  hizmetinizde.

Birbirinden lezzetli ürünleri, mezeleri, alternatif menüleri, doyumsuz deniz manzarası ve huzurlu ortamıyla FD Restoran balık keyfini eksiksiz yaşatıyor.

Bursa''nın en güzel noktalarından biri olan Heykel''de sizlere 14 senedir hizmet vermekten mutluk duyuyoruz.')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1, N'Furkan', N'Daloğlu', N'Furkan1', N'FURKAN1', N'deneme1@gmail.com', N'DENEME1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELYgMzYpuRNAlcLbmk85ikQbfVqzqXwE8zmMy9dio40nNqMQ4NY3DY+hQ9a49kKChg==', N'YEKDCMJVUER7JY7VQPKWPYJ4KYQD4DIK', N'59d0904d-9fa7-4da0-8d47-ca212c994931', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, N'beto', N'beto', N'beto1', N'BETO1', N'deneme2@gmail.com', N'DENEME2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAzrxsToyUoodoAFY2ASHg/Mdo5iz+Y0zPk4oj97PFdUrN0CPseqG1J2GoO2rEb6OQ==', N'RYW73MF5BBYFKJVWLT2WCKYBNRVFNVGV', N'24ec0cf6-4422-418a-afb4-bf224aa2b676', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Baskets] ON 

INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [TotalPrice], [ProductID], [MenuTableID]) VALUES (1, CAST(100.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, 4)
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [TotalPrice], [ProductID], [MenuTableID]) VALUES (2, CAST(50.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 6, 4)
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [TotalPrice], [ProductID], [MenuTableID]) VALUES (3, CAST(25.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 9, 4)
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [TotalPrice], [ProductID], [MenuTableID]) VALUES (4, CAST(100.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 8, 4)
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [TotalPrice], [ProductID], [MenuTableID]) VALUES (5, CAST(100.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 8, 6)
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [TotalPrice], [ProductID], [MenuTableID]) VALUES (7, CAST(75.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 4)
SET IDENTITY_INSERT [dbo].[Baskets] OFF
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (1, N'aaa', N'1111', N'deneme1@gmail.com', 3, CAST(N'2024-04-09T00:00:00.0000000' AS DateTime2), N'Rezervasyon Alındı')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (3, N'Furkan Daloğlu', N'05057426250', N'deneme1@gmail.com', 2, CAST(N'2024-04-16T00:00:00.0000000' AS DateTime2), N'Rezervasyon İptal Edildi')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (4, N'bbbb', N'11111', N'deneme3@gmail.com', 3, CAST(N'2024-04-16T00:00:00.0000000' AS DateTime2), N'Rezervasyon Onaylandı')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (8, N'deneeme', N'505 555 55 55', N'deneme2@gmail.com', 3, CAST(N'2024-04-30T00:00:00.0000000' AS DateTime2), N'Rezervasyon Onaylandı')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (9, N'deneeme22', N'505 555 55 55', N'deneme22@gmail.com', 3, CAST(N'2024-04-30T00:00:00.0000000' AS DateTime2), N'Rezervasyon Onaylandı')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (10, N'deneeme223', N'505 555 55 55', N'deneme22@gmail.com', 3, CAST(N'2024-04-30T00:00:00.0000000' AS DateTime2), N'Rezervasyon İptal Edildi')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (11, N'deneeme2233', N'505 555 55 55', N'deneme223@gmail.com', 3, CAST(N'2024-05-02T00:00:00.0000000' AS DateTime2), N'Rezervasyon Alındı')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (13, N'Beto Başkan', N'05555555555', N'beto@gmail.com', 2, CAST(N'2024-04-30T00:00:00.0000000' AS DateTime2), N'Rezervasyon Alındı')
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (3, N'Hamburger', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (4, N'Makarna', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (6, N'Salata', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (7, N'Tatlı', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (8, N'İçecek', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (12, N'Kızartmalar', 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [Location], [Phone], [Mail], [FooterDescription], [FooterTitle], [OpenDays], [OpenDaysDescription], [OpenHours]) VALUES (2, N'lokasyon adresi', N'+90(555)555 55 55', N'FDSignalRRestoran@gmail.com', N'Sizlere Daha İyi Hizmet Etmek İçin Şikayetleriniz, Önerileriniz ve Rezervasyon İşlemleriniz için 7/24 İletişime Geçebilirsiniz', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([DiscountID], [Title], [Amount], [Description], [ImageUrl], [Status]) VALUES (2, N'Muhteşem Cuma', N'25', N'a', N'/feane-1.0.0/images/o1.jpg', 1)
INSERT [dbo].[Discounts] ([DiscountID], [Title], [Amount], [Description], [ImageUrl], [Status]) VALUES (3, N'Pizza Partisi', N'20', N'bbb', N'/feane-1.0.0/images/o2.jpg', 1)
INSERT [dbo].[Discounts] ([DiscountID], [Title], [Amount], [Description], [ImageUrl], [Status]) VALUES (4, N'deneme', N'40', N'testt', N'test', 0)
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuTables] ON 

INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (1, N'Bahçe01', 1)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (2, N'Bahçe02', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (3, N'Bahçe03', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (4, N'Bahçe04', 1)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (5, N'Bahçe05', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (6, N'Bahçe06', 1)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (7, N'Salon01', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (8, N'Salon02', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (9, N'Salon03', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (10, N'Salon04', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (12, N'Salon05', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (13, N'Salon06', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (14, N'Salon07', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (15, N'Teras01', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (16, N'Teras02', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (17, N'Teras03', 0)
INSERT [dbo].[MenuTables] ([MenuTableID], [Name], [Status]) VALUES (1002, N'Teras04', 0)
SET IDENTITY_INSERT [dbo].[MenuTables] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessageID], [NameSurname], [Mail], [Phone], [Subject], [MessageContent], [MessageSendDate], [Status]) VALUES (1, N'Ahmet Yılmaz', N'ahmet@gmail.com', N'0555 555 55 55', N'Teşşekür', N'Merhaba hizmetiniz için çok teşekkür ederiz', CAST(N'2024-05-04T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Messages] ([MessageID], [NameSurname], [Mail], [Phone], [Subject], [MessageContent], [MessageSendDate], [Status]) VALUES (2, N'Beto Başkan', N'deneme2@gmail.com', N'05555555555', N'öneri', N'Merhaba menünüze daha fazla tatlı seçeneği eklerseniz sevinirim.', CAST(N'2024-05-04T00:00:00.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[MoneyCases] ON 

INSERT [dbo].[MoneyCases] ([MoneyCaseID], [TotalAmount]) VALUES (1, CAST(635.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[MoneyCases] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationID], [Type], [Icon], [Description], [Date], [Status]) VALUES (1, N'notif-icon notif-primary', N'la la-user-plus', N'Yeni Rezervasyon Var.', CAST(N'2024-04-19T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Notifications] ([NotificationID], [Type], [Icon], [Description], [Date], [Status]) VALUES (2, N'notif-icon notif-success', N'la la-comment', N'Yeni Yorumunuz Var.', CAST(N'2024-04-19T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Notifications] ([NotificationID], [Type], [Icon], [Description], [Date], [Status]) VALUES (3, N'notif-icon notif-danger', N'la la-heart', N'Yeni Siparişiniz Var.', CAST(N'2024-04-19T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Notifications] ([NotificationID], [Type], [Icon], [Description], [Date], [Status]) VALUES (4, N'notif-icon notif-success', N'la la-comment', N'Yeni Yorumunuz Var.', CAST(N'2024-04-19T00:00:00.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (1, 1, 1, CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (2, 6, 1, CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (3, 9, 2, CAST(25.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (4, 10, 5, CAST(10.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (5, 7, 1, CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (6, 9, 1, CAST(25.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (7, 10, 1, CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (8, 1, 1, CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (10, 4, 2, CAST(100.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 7)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [OrderDate], [TotalPrice]) VALUES (1, N'Salon01', N'Hesap Kapatıldı', CAST(N'2024-04-10' AS Date), CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [OrderDate], [TotalPrice]) VALUES (2, N'Salon02', N'Hesap Kapatıldı', CAST(N'2024-04-10' AS Date), CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [OrderDate], [TotalPrice]) VALUES (3, N'Salon03', N'Hesap Kapatıldı', CAST(N'2024-04-10' AS Date), CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [OrderDate], [TotalPrice]) VALUES (5, N'Bahçe01', N'Hesap Kapatıldı', CAST(N'2024-04-10' AS Date), CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [OrderDate], [TotalPrice]) VALUES (7, N'Bahçe02', N'Hesap Kapatıldı', CAST(N'2024-04-10' AS Date), CAST(200.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (1, N'Steak Burger', N'test', CAST(100.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f1.png', 1, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (2, N'Tavuk Burger', N'test', CAST(75.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f2.png', 1, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (4, N'Bolonez Soslu Makarna', N'test', CAST(100.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f3.png', 1, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (5, N'Pesto Soslu Makarna', N'test', CAST(75.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f4.png', 1, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (6, N'Sezar Salata', N'test', CAST(50.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f5.png', 1, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (7, N'Akdeniz Salata', N'test', CAST(50.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f6.png', 1, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (8, N'Künefe', N'test', CAST(100.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f7.png', 1, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (9, N'Kola', N'test', CAST(25.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f8.png', 1, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (10, N'Su', N'test', CAST(10.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f9.png', 1, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (26, N'Fanta', N'test', CAST(20.00 AS Decimal(18, 2)), N'test', 1, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (27, N'Çoban Salata', N'test', CAST(50.00 AS Decimal(18, 2)), N'test', 1, 6)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([SliderID], [Title1], [Title2], [Title3], [Description1], [Description2], [Description3]) VALUES (1, N'Mükemmel Makarnalar', N'Asya Mutfağı', N'Benzersiz Hamburgerler', N'İtalya''nın profesyonel aşçılarının tarifleri ile hazırlanan makarnalar Türk mutfağı ile harmanlanıp eşsiz bir lezzet oluşturuldu.', N'Asyanın en lezzetli sokak yemeklerini sizlerin hizmetine sunduk. Tatlılar, içecekler, ve eşsiz baharatlar ile yemekleri sizlerin hizmetine sunduk.', N'Her türlü sosu kendiniz hazırlayabileceğiniz sizin için hazırlanan hamburler için sizleri beklemekteyiz. Sağlıklı, lezzetli ve doğal bir hamburger yemeye hazır mısınız?')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMedias] ON 

INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Url], [Icon]) VALUES (2, N'Facebook', N'http://www.facebook.com', N'fa fa-facebook')
INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Url], [Icon]) VALUES (3, N'Instagram', N'http://www.instagram.com', N'fa fa-instagram')
INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Url], [Icon]) VALUES (4, N'Linkedin', N'http://www.linkedin.com', N'fa fa-linkedin')
INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Url], [Icon]) VALUES (5, N'Twitter', N'http://www.twitter.com', N'fa fa-twitter')
SET IDENTITY_INSERT [dbo].[SocialMedias] OFF
GO
SET IDENTITY_INSERT [dbo].[Testimonials] ON 

INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Comment], [ImageUrl], [Status]) VALUES (2, N'Betül Beto', N'Resim Öğretmeni', N'Uzun zamandır geldiğim en lezzetli restoran. Bu lezzeti kaçırmamak için mutlaka gidin', N'/feane-1.0.0/images/client1.jpg', 1)
INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Comment], [ImageUrl], [Status]) VALUES (3, N'Furkan Daloğlu', N'Yazılımcı', N'Buraya gitmeyi herkese tavsiye ediyorum ama bence ilgimi en çok çeken kısmı sitesi oldu. Hazırlayan mükemmel hazırlamış :)', N'/feane-1.0.0/images/client2.jpg', 1)
INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Comment], [ImageUrl], [Status]) VALUES (4, N'aaaaaaaaaa', N'aaaaaaaaaaaaa', N'aaaaaa', N'aaaaaaaaaa', 0)
SET IDENTITY_INSERT [dbo].[Testimonials] OFF
GO
ALTER TABLE [dbo].[Discounts] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoryID]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Baskets]  WITH CHECK ADD  CONSTRAINT [FK_Baskets_MenuTables_MenuTableID] FOREIGN KEY([MenuTableID])
REFERENCES [dbo].[MenuTables] ([MenuTableID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Baskets] CHECK CONSTRAINT [FK_Baskets_MenuTables_MenuTableID]
GO
ALTER TABLE [dbo].[Baskets]  WITH CHECK ADD  CONSTRAINT [FK_Baskets_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Baskets] CHECK CONSTRAINT [FK_Baskets_Products_ProductID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
