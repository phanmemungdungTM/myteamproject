USE [SHOPMOON_NET]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/19/2022 9:16:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[catID] [int] IDENTITY(1,1) NOT NULL,
	[proID] [int] NULL,
	[proPrice] [int] NULL,
	[cartQuantity] [int] NULL,
	[cartMoney] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[catID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[cusID] [int] IDENTITY(1,1) NOT NULL,
	[cusName] [nvarchar](max) NULL,
	[cusEmail] [nchar](100) NULL,
	[cusPhone] [nchar](11) NULL,
	[cusType] [int] NULL,
	[cusStatus] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerStatus]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerStatus](
	[cusStatus] [int] IDENTITY(1,1) NOT NULL,
	[cusStatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustomerStatus] PRIMARY KEY CLUSTERED 
(
	[cusStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerType]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerType](
	[cusType] [int] IDENTITY(1,1) NOT NULL,
	[cusTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustomerType] PRIMARY KEY CLUSTERED 
(
	[cusType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[empID] [int] IDENTITY(1,1) NOT NULL,
	[empName] [nvarchar](50) NULL,
	[empDate] [date] NULL,
	[empPhoto] [char](100) NULL,
	[empAddress] [nvarchar](max) NULL,
	[empSalary] [int] NULL,
	[empBonus] [int] NULL,
	[empStartTime] [date] NULL,
	[empEmail] [char](100) NULL,
	[empPhone] [char](10) NULL,
	[empPassword] [nchar](100) NULL,
	[empRole] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesRole]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesRole](
	[empRole] [int] IDENTITY(1,1) NOT NULL,
	[empRoleName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[empRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapHang]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapHang](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[proID] [int] NOT NULL,
	[proName] [nvarchar](50) NOT NULL,
	[hangsanxuat] [nvarchar](50) NOT NULL,
	[orderQuantity] [int] NOT NULL,
	[dongia] [int] NOT NULL,
	[tongtien] [int] NOT NULL,
	[ngaynhap] [date] NOT NULL,
	[ngaynhan] [date] NOT NULL,
 CONSTRAINT [PK_NhapHang] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[cusID] [int] NULL,
	[proID] [int] NULL,
	[proName] [nvarchar](100) NOT NULL,
	[orderDate] [date] NOT NULL,
	[proPrice] [int] NOT NULL,
	[orderQuantity] [int] NOT NULL,
	[orderMoney] [int] NOT NULL,
	[empID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producers]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[proProducer] [int] IDENTITY(1,1) NOT NULL,
	[proProducerName] [nvarchar](50) NOT NULL,
	[proPhone] [nvarchar](100) NULL,
	[proEmail] [nvarchar](100) NULL,
	[proAddress] [nvarchar](100) NULL,
 CONSTRAINT [PK_Producers] PRIMARY KEY CLUSTERED 
(
	[proProducer] ASC,
	[proProducerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProducerType]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerType](
	[proProducer] [int] IDENTITY(1,1) NOT NULL,
	[proProducerName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[proProducer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[proID] [int] IDENTITY(1,1) NOT NULL,
	[proName] [nvarchar](max) NULL,
	[proPrice] [int] NULL,
	[proPhoto] [char](100) NULL,
	[proType] [int] NULL,
	[proStatus] [int] NULL,
	[proProducer] [int] NULL,
	[proQuantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[proID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 6/19/2022 9:16:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[proType] [int] NOT NULL,
	[proTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[proType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([cusID], [cusName], [cusEmail], [cusPhone], [cusType], [cusStatus]) VALUES (4, N'Nguyễn Thiện Quang', N'quangu@gmail.com                                                                                    ', N'0824707072 ', 1, 2)
INSERT [dbo].[Customers] ([cusID], [cusName], [cusEmail], [cusPhone], [cusType], [cusStatus]) VALUES (10, N'Sơn Tùng ATM', N'abc@gmaill.com                                                                                      ', N'0299929991 ', 1, 1)
INSERT [dbo].[Customers] ([cusID], [cusName], [cusEmail], [cusPhone], [cusType], [cusStatus]) VALUES (11, N'Nguyen Van a', N'a                                                                                                   ', N'089999999  ', 1, 1)
INSERT [dbo].[Customers] ([cusID], [cusName], [cusEmail], [cusPhone], [cusType], [cusStatus]) VALUES (13, N'Chi Pheo', N'a                                                                                                   ', N'0824707077 ', 1, 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerStatus] ON 

INSERT [dbo].[CustomerStatus] ([cusStatus], [cusStatusName]) VALUES (1, N'Đang Online')
INSERT [dbo].[CustomerStatus] ([cusStatus], [cusStatusName]) VALUES (2, N'Đang Offline')
SET IDENTITY_INSERT [dbo].[CustomerStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerType] ON 

INSERT [dbo].[CustomerType] ([cusType], [cusTypeName]) VALUES (1, N'Khách hàng thường')
INSERT [dbo].[CustomerType] ([cusType], [cusTypeName]) VALUES (2, N'Khách VIP')
SET IDENTITY_INSERT [dbo].[CustomerType] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([empID], [empName], [empDate], [empPhoto], [empAddress], [empSalary], [empBonus], [empStartTime], [empEmail], [empPhone], [empPassword], [empRole]) VALUES (5, N'Trần Thị Hồng Hạc', CAST(N'2022-06-15' AS Date), N'z3493516180923_f3c31267310f081b91ca675806f79f23.jpg                                                 ', N'Tân Phú', 10000000, 1200000, CAST(N'2021-10-05' AS Date), N'honghac@gmail.com                                                                                   ', N'0333688185', N'123                                                                                                 ', 3)
INSERT [dbo].[Employees] ([empID], [empName], [empDate], [empPhoto], [empAddress], [empSalary], [empBonus], [empStartTime], [empEmail], [empPhone], [empPassword], [empRole]) VALUES (7, N'Nguyễn Thiện Quang', CAST(N'2022-06-15' AS Date), N'288402774_1379484809212634_4709149689952643736_n.jpg                                                ', N'Tân Phú', 9000000, 1200000, CAST(N'2021-10-05' AS Date), N'quang@gmail.com                                                                                     ', N'0333688186', N'123                                                                                                 ', 2)
INSERT [dbo].[Employees] ([empID], [empName], [empDate], [empPhoto], [empAddress], [empSalary], [empBonus], [empStartTime], [empEmail], [empPhone], [empPassword], [empRole]) VALUES (8, N'Trần Thị Hồng Hạc', CAST(N'2022-06-15' AS Date), N'269699763_1105127560348366_2340610619452922846_n.jpg                                                ', N'Tân Phú', 8000000, 1200000, CAST(N'2021-10-05' AS Date), N'honghac@gmail.com                                                                                   ', N'0333688188', N'123                                                                                                 ', 1)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeesRole] ON 

INSERT [dbo].[EmployeesRole] ([empRole], [empRoleName]) VALUES (1, N'Nhân viên')
INSERT [dbo].[EmployeesRole] ([empRole], [empRoleName]) VALUES (2, N'Quản lý')
INSERT [dbo].[EmployeesRole] ([empRole], [empRoleName]) VALUES (3, N'Admin')
SET IDENTITY_INSERT [dbo].[EmployeesRole] OFF
GO
SET IDENTITY_INSERT [dbo].[NhapHang] ON 

INSERT [dbo].[NhapHang] ([orderID], [proID], [proName], [hangsanxuat], [orderQuantity], [dongia], [tongtien], [ngaynhap], [ngaynhan]) VALUES (4, 18, N'Điện thoại Xiaomi Redmi Note 11 Pro', N'Macbook', 10, 6990000, 69900000, CAST(N'2022-06-19' AS Date), CAST(N'2022-06-19' AS Date))
SET IDENTITY_INSERT [dbo].[NhapHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderID], [cusID], [proID], [proName], [orderDate], [proPrice], [orderQuantity], [orderMoney], [empID]) VALUES (23, 4, 19, N'Điện thoại iPhone 12 Pro Max 512GB ', CAST(N'2022-06-19' AS Date), 3099000, 1, 3099000, 8)
INSERT [dbo].[Order] ([orderID], [cusID], [proID], [proName], [orderDate], [proPrice], [orderQuantity], [orderMoney], [empID]) VALUES (24, 11, 21, N'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU (Z124000DE)', CAST(N'2022-06-19' AS Date), 33990000, 1, 33990000, 8)
INSERT [dbo].[Order] ([orderID], [cusID], [proID], [proName], [orderDate], [proPrice], [orderQuantity], [orderMoney], [empID]) VALUES (25, 11, 28, N'Bàn Phím Có Dây DareU EK87', CAST(N'2022-06-19' AS Date), 650000, 1, 650000, 8)
INSERT [dbo].[Order] ([orderID], [cusID], [proID], [proName], [orderDate], [proPrice], [orderQuantity], [orderMoney], [empID]) VALUES (26, 13, 21, N'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU (Z124000DE)', CAST(N'2022-06-19' AS Date), 33990000, 1, 33990000, 8)
INSERT [dbo].[Order] ([orderID], [cusID], [proID], [proName], [orderDate], [proPrice], [orderQuantity], [orderMoney], [empID]) VALUES (27, 13, 26, N'Chuột Bluetooth Apple MK2E3 Trắng ', CAST(N'2022-06-19' AS Date), 1615000, 1, 1615000, 8)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Producers] ON 

INSERT [dbo].[Producers] ([proProducer], [proProducerName], [proPhone], [proEmail], [proAddress]) VALUES (1, N'21', N'0927880870', N'zedez@gmail.com', NULL)
INSERT [dbo].[Producers] ([proProducer], [proProducerName], [proPhone], [proEmail], [proAddress]) VALUES (2, N'Genius', N'0977077722', N'Genius@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Producers] OFF
GO
SET IDENTITY_INSERT [dbo].[ProducerType] ON 

INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (1, N'Macbook')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (2, N'Asus')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (3, N'HP')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (4, N'Lenovo')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (5, N'Acer')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (6, N'Dell')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (7, N'MSI')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (8, N'Surface')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (9, N'LG')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (10, N'GIGABYTE')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (11, N'Intel')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (12, N'Samsung')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (13, N'Oppo')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (14, N'Iphone')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (15, N'Xiaomi')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (16, N'Vivo')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (17, N'Realme')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (18, N'Nokia')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (19, N'Logitech')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (20, N'Rapoo')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (21, N'Zedez')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (22, N'Genius')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (23, N'Asus')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (24, N'Magic Mouse')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (25, N'Microsoft')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (26, N'Apple')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (27, N'Dareu')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (28, N'Sony')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (29, N'Hydrus')
INSERT [dbo].[ProducerType] ([proProducer], [proProducerName]) VALUES (30, N'Leagtech')
SET IDENTITY_INSERT [dbo].[ProducerType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (17, N'Điện thoại OPPO Reno7 Z 5G', 10490000, N'oppo-reno7-z-5g-thumb-1-1-600x600.jpg                                                               ', 1, 1, 13, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (18, N'Điện thoại Xiaomi Redmi Note 11 Pro', 6990000, N'xiaomi-redmi-note-11-pro-trang-thumb-600x600.jpg                                                    ', 1, 1, 15, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (19, N'Điện thoại iPhone 12 Pro Max 512GB ', 3099000, N'iphone-12-pro-max-xam-new-600x600-600x600.jpg                                                       ', 1, 1, 14, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (20, N'Điện thoại Samsung Galaxy Z Fold3 5G 256GB', 36990000, N'samsung-galaxy-z-fold-3-(6).jpg                                                                     ', 1, 1, 12, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (21, N'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU (Z124000DE)', 33990000, N'apple-macbook-air-m1-2020-z124000de-(16).jpg                                                        ', 2, 1, 1, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (22, N'Laptop Lenovo Ideapad 1 11IGL05 N5030/4GB/256GB/Win11 (81VT006FVN) ', 6290000, N'lenovo-ideapad-1-11igl05-n5030-81vt006fvn.jpg                                                       ', 2, 1, 4, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (24, N'Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2', 3490000, N'tai-nghe-bluetooth-airpods-2-wireless-charge-mrxj2-thumb.jpg                                        ', 3, 1, 26, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (25, N'Tai nghe Bluetooth True Wireless JBL T115TWS', 990000, N'bluetooth-true-wireless-jbl-t115twswhtas-thumb.jpeg                                                 ', 3, 1, 25, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (26, N'Chuột Bluetooth Apple MK2E3 Trắng ', 1615000, N'chuot-bluetooth-apple-mk2e3-trang-thumb.jpg                                                         ', 4, 1, 1, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (27, N'Chuột có dây DareU EM908 Hồng', 336000, N'chuot-co-day-dareu-em908-hong-thumb.jpeg                                                            ', 4, 1, 27, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (28, N'Bàn Phím Có Dây DareU EK87', 650000, N'co-day-dareu-ek87-1.-600x600.jpg                                                                    ', 6, 1, 27, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (30, N'Cáp Type C - Lightning 2m Apple MQGH2 Trắng', 990000, N'cap-type-c-lightning-2m-apple-mqgh2-trang-thumb.jpeg                                                ', 5, 1, 26, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (31, N'Pin sạc dự phòng 7500 mAh AVA+ LJ JP199', 175000, N'ava-lj-jp199-ava-600x600.jpg                                                                        ', 5, 1, 24, 200)
INSERT [dbo].[Product] ([proID], [proName], [proPrice], [proPhoto], [proType], [proStatus], [proProducer], [proQuantity]) VALUES (32, N'Pin sạc dự phòng Polymer 10.000 mAh Hydrus PA CK01', 195000, N'pin-polymer-10000-mah-hydrus-pa-ck01-ava.jpg                                                        ', 3, 1, 23, 200)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductType] ([proType], [proTypeName]) VALUES (1, N'Điện thoại')
INSERT [dbo].[ProductType] ([proType], [proTypeName]) VALUES (2, N'Laptop')
INSERT [dbo].[ProductType] ([proType], [proTypeName]) VALUES (3, N'Tai nghe')
INSERT [dbo].[ProductType] ([proType], [proTypeName]) VALUES (4, N'Chuột')
INSERT [dbo].[ProductType] ([proType], [proTypeName]) VALUES (5, N'Xạc')
INSERT [dbo].[ProductType] ([proType], [proTypeName]) VALUES (6, N'Bàn phím')
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([proID])
REFERENCES [dbo].[Product] ([proID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_CustomerStatus] FOREIGN KEY([cusStatus])
REFERENCES [dbo].[CustomerStatus] ([cusStatus])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_CustomerStatus]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_CustomerType] FOREIGN KEY([cusType])
REFERENCES [dbo].[CustomerType] ([cusType])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_CustomerType]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_EmployeesRole] FOREIGN KEY([empRole])
REFERENCES [dbo].[EmployeesRole] ([empRole])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_EmployeesRole]
GO
ALTER TABLE [dbo].[NhapHang]  WITH CHECK ADD  CONSTRAINT [FK_NhapHang_Product] FOREIGN KEY([proID])
REFERENCES [dbo].[Product] ([proID])
GO
ALTER TABLE [dbo].[NhapHang] CHECK CONSTRAINT [FK_NhapHang_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customers] FOREIGN KEY([cusID])
REFERENCES [dbo].[Customers] ([cusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customers]
GO
ALTER TABLE [dbo].[Producers]  WITH CHECK ADD  CONSTRAINT [FK_Producers_ProducerType] FOREIGN KEY([proProducer])
REFERENCES [dbo].[ProducerType] ([proProducer])
GO
ALTER TABLE [dbo].[Producers] CHECK CONSTRAINT [FK_Producers_ProducerType]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProducerType] FOREIGN KEY([proProducer])
REFERENCES [dbo].[ProducerType] ([proProducer])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProducerType]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([proType])
REFERENCES [dbo].[ProductType] ([proType])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
