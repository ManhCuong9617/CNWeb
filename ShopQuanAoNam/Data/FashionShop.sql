USE [master]
GO
/****** Object:  Database [FashionShopCNWeb]    Script Date: 20/04/2017 9:39:01 SA ******/
CREATE DATABASE [FashionShopCNWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FashionShopCNWeb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FashionShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FashionShop_logCNWeb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FashionShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FashionShopCNWeb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FashionShopCNWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FashionShopCNWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FashionShopCNWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FashionShopCNWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FashionShopCNWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FashionShopCNWeb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FashionShopCNWeb] SET  MULTI_USER 
GO
ALTER DATABASE [FashionShopCNWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FashionShopCNWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FashionShopCNWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FashionShopCNWeb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FashionShopCNWeb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FashionShopCNWeb] SET QUERY_STORE = OFF
GO
USE [FashionShopCNWeb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [FashionShopCNWeb]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 20/04/2017 9:39:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[userName] [varchar](50) NOT NULL,
	[passWord] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupDetail]    Script Date: 20/04/2017 9:39:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupDetail](
	[maLoaiSanPham] [varchar](50) NOT NULL,
	[tenLoaiSanPham] [nvarchar](50) NOT NULL,
	[nhomMa] [varchar](50) NOT NULL,
	[meta-tittle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GroupDetail] PRIMARY KEY CLUSTERED 
(
	[maLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupPr]    Script Date: 20/04/2017 9:39:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupPr](
	[maNhom] [varchar](50) NOT NULL,
	[tenNhom] [nvarchar](50) NOT NULL,
	[meta-tittle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GroupPr] PRIMARY KEY CLUSTERED 
(
	[maNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 20/04/2017 9:39:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[maSanPham] [varchar](50) NOT NULL,
	[moTa] [nvarchar](150) NULL,
	[giaSanPham] [int] NOT NULL,
	[chatLieu] [nvarchar](50) NULL,
	[loaiSanPhamMa] [varchar](50) NOT NULL,
	[soLuongDatMua] [int] NOT NULL,
	[mauSac] [nvarchar](50) NULL,
	[urlAnh] [varchar](150) NOT NULL,
	[ngayTao] [date] NOT NULL,
	[tenSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 20/04/2017 9:39:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[maSanPham] [varchar](50) NOT NULL,
	[size] [varchar](5) NOT NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC,
	[size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 20/04/2017 9:39:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[maHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[ngayBanHang] [date] NOT NULL,
	[diaChiGiaoHang] [nvarchar](50) NOT NULL,
	[userEmail] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReceiptDetail]    Script Date: 20/04/2017 9:39:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptDetail](
	[maHoaDon] [int] NOT NULL,
	[maSanPham] [varchar](50) NOT NULL,
	[size] [varchar](5) NOT NULL,
	[soLuongDatMua] [int] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_ReceiptDetail] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC,
	[maSanPham] ASC,
	[size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 20/04/2017 9:39:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [varchar](50) NULL,
	[tenNguoiDung] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([userName], [passWord]) VALUES (N'admin', N'admin')
INSERT [dbo].[GroupDetail] ([maLoaiSanPham], [tenLoaiSanPham], [nhomMa], [meta-tittle]) VALUES (N'aophong', N'Áo phông', N'ao', N'ao-phong')
INSERT [dbo].[GroupDetail] ([maLoaiSanPham], [tenLoaiSanPham], [nhomMa], [meta-tittle]) VALUES (N'jeans', N'Quần jeans', N'quan', N'quan-jeans')
INSERT [dbo].[GroupDetail] ([maLoaiSanPham], [tenLoaiSanPham], [nhomMa], [meta-tittle]) VALUES (N'kaki', N'Quần kaki', N'quan', N'quan-kaki')
INSERT [dbo].[GroupDetail] ([maLoaiSanPham], [tenLoaiSanPham], [nhomMa], [meta-tittle]) VALUES (N'len', N'Áo len', N'ao', N'ao-len')
INSERT [dbo].[GroupDetail] ([maLoaiSanPham], [tenLoaiSanPham], [nhomMa], [meta-tittle]) VALUES (N'quanau', N'Quần âu', N'quan', N'quan-au')
INSERT [dbo].[GroupDetail] ([maLoaiSanPham], [tenLoaiSanPham], [nhomMa], [meta-tittle]) VALUES (N'somi', N'Áo sơ mi', N'ao', N'ao-so-mi')
INSERT [dbo].[GroupDetail] ([maLoaiSanPham], [tenLoaiSanPham], [nhomMa], [meta-tittle]) VALUES (N'thatlung', N'Thắt lưng', N'phukien', N'that-lung')
INSERT [dbo].[GroupDetail] ([maLoaiSanPham], [tenLoaiSanPham], [nhomMa], [meta-tittle]) VALUES (N'vi', N'Ví da', N'phukien', N'vi-da')
INSERT [dbo].[GroupDetail] ([maLoaiSanPham], [tenLoaiSanPham], [nhomMa], [meta-tittle]) VALUES (N'vong', N'Vòng', N'phukien', N'vong')
INSERT [dbo].[GroupPr] ([maNhom], [tenNhom], [meta-tittle]) VALUES (N'ao', N'Áo nam', N'ao-nam')
INSERT [dbo].[GroupPr] ([maNhom], [tenNhom], [meta-tittle]) VALUES (N'phukien', N'Phụ kiện', N'phu-kien')
INSERT [dbo].[GroupPr] ([maNhom], [tenNhom], [meta-tittle]) VALUES (N'quan', N'Quần nam', N'quan-nam')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'ao1', N'Áo sơ mi', 300000, NULL, N'somi', 15, N'xanh', N'/Resources/images/items/ao/ao_nam_1.jpg', CAST(N'2017-04-16' AS Date), N'Áo sơ mi')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'ao2', N'Áo phông', 310000, NULL, N'aophong', 32, N'xanh', N'/Resources/images/items/ao/ao_nam_2.jpg', CAST(N'2017-04-16' AS Date), N'Áo phông')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'ao3', N'Áo phông', 320000, NULL, N'aophong', 15, N'xanh', N'/Resources/images/items/ao/ao_nam_3.jpg', CAST(N'2017-04-16' AS Date), N'Áo phông')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'ao4', N'Áo sơ mi', 330000, NULL, N'somi', 8, N'trắng', N'/Resources/images/items/ao/ao_nam_4.jpg', CAST(N'2017-04-16' AS Date), N'Áo sơ mi')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'ao5', N'Áo sơ mi', 340000, NULL, N'somi', 26, N'xanh', N'/Resources/images/items/ao/ao_nam_5.jpg', CAST(N'2017-04-16' AS Date), N'Áo sơ mi')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'ao6', N'Áo phông', 350000, NULL, N'aophong', 31, N'xanh nhạt', N'/Resources/images/items/ao/ao_nam_6.jpg', CAST(N'2017-04-16' AS Date), N'Áo phông')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'quan1', N'Quần âu', 450000, NULL, N'quanau', 9, N'xanh dương', N'/Resources/images/items/quan/quan_nam_1.jpg', CAST(N'2017-04-16' AS Date), N'Quần âu')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'quan2', N'Quần âu', 412000, NULL, N'quanau', 27, N'nâu', N'/Resources/images/items/quan/quan_nam_2.jpg', CAST(N'2017-04-16' AS Date), N'Quần âu')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'quan3', N'Quần âu', 315000, NULL, N'quanau', 14, N'xanh navy', N'/Resources/images/items/quan/quan_nam_3.jpg', CAST(N'2017-04-16' AS Date), N'Quần âu')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'quan4', N'Quần âu', 320000, NULL, N'quanau', 40, N'xám nhạt', N'/Resources/images/items/quan/quan_nam_4.jpg', CAST(N'2017-04-16' AS Date), N'Quần âu')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'quan5', N'Quần âu', 350000, NULL, N'quanau', 34, N'xanh kẻ sọc', N'/Resources/images/items/quan/quan_nam_5.jpg', CAST(N'2017-04-16' AS Date), N'Quần âu')
INSERT [dbo].[Product] ([maSanPham], [moTa], [giaSanPham], [chatLieu], [loaiSanPhamMa], [soLuongDatMua], [mauSac], [urlAnh], [ngayTao], [tenSanPham]) VALUES (N'quan6', N'Quần âu', 430000, NULL, N'quanau', 9, N'đen', N'/Resources/images/items/quan/quan_nam_6.jpg', CAST(N'2017-04-16' AS Date), N'Quần âu')
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao1', N'L', 2)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao1', N'M', 4)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao1', N'S', 3)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao1', N'XL', 6)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao2', N'M', 3)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao2', N'S', 4)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao3', N'L', 4)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao3', N'XL', 7)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao4', N'M', 5)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao4', N'S', 7)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao4', N'XL', 3)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao5', N'S', 2)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao5', N'XXL', 12)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao6', N'M', 8)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'ao6', N'XXL', 13)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan1', N'29', 14)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan1', N'31', 12)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan1', N'32', 13)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan2', N'28', 14)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan2', N'39', 16)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan3', N'30', 20)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan3', N'32', 21)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan4', N'28', 31)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan4', N'29', 31)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan5', N'29', 24)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan5', N'31', 12)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan6', N'30', 12)
INSERT [dbo].[ProductDetail] ([maSanPham], [size], [soLuong]) VALUES (N'quan6', N'31', 16)
INSERT [dbo].[User] ([username], [password], [diaChi], [soDienThoai], [tenNguoiDung]) VALUES (N'admin', N'a', N'Hà Nội', N'1212546985', N'zxc')
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__ngayTao__7A672E12]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[Receipt] ADD  DEFAULT (getdate()) FOR [ngayBanHang]
GO
ALTER TABLE [dbo].[GroupDetail]  WITH CHECK ADD  CONSTRAINT [FK_GroupDetail_GroupPr] FOREIGN KEY([nhomMa])
REFERENCES [dbo].[GroupPr] ([maNhom])
GO
ALTER TABLE [dbo].[GroupDetail] CHECK CONSTRAINT [FK_GroupDetail_GroupPr]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_GroupDetail] FOREIGN KEY([loaiSanPhamMa])
REFERENCES [dbo].[GroupDetail] ([maLoaiSanPham])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_GroupDetail]
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_Product] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[Product] ([maSanPham])
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [FK_ProductDetail_Product]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_User] FOREIGN KEY([userEmail])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_User]
GO
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetail_ProductDetail] FOREIGN KEY([maSanPham], [size])
REFERENCES [dbo].[ProductDetail] ([maSanPham], [size])
GO
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [FK_ReceiptDetail_ProductDetail]
GO
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetail_Receipt] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[Receipt] ([maHoaDon])
GO
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [FK_ReceiptDetail_Receipt]
GO
USE [master]
GO
ALTER DATABASE [FashionShopCNWeb] SET  READ_WRITE 
GO
