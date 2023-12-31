USE [master]
GO
/****** Object:  Database [QLNoiThat]    Script Date: 13/11/2023 3:07:35 CH ******/
CREATE DATABASE [QLNoiThat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNoiThat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\QLNoiThat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNoiThat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\QLNoiThat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLNoiThat] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNoiThat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNoiThat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNoiThat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNoiThat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNoiThat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNoiThat] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNoiThat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNoiThat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNoiThat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNoiThat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNoiThat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNoiThat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNoiThat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNoiThat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNoiThat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNoiThat] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLNoiThat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNoiThat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNoiThat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNoiThat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNoiThat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNoiThat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNoiThat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNoiThat] SET RECOVERY FULL 
GO
ALTER DATABASE [QLNoiThat] SET  MULTI_USER 
GO
ALTER DATABASE [QLNoiThat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNoiThat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNoiThat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNoiThat] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNoiThat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNoiThat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLNoiThat', N'ON'
GO
ALTER DATABASE [QLNoiThat] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLNoiThat] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLNoiThat]
GO
/****** Object:  Table [dbo].[CaLam]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLam](
	[MaCa] [nvarchar](20) NOT NULL,
	[TenCa] [nvarchar](50) NULL,
 CONSTRAINT [pk_CaLam] PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[MaChatLieu] [nvarchar](20) NOT NULL,
	[TenChatLieu] [nvarchar](50) NULL,
 CONSTRAINT [pk_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDDH]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDDH](
	[SoDDH] [nvarchar](20) NOT NULL,
	[MaNoiThat] [nvarchar](20) NULL,
	[SL] [int] NULL,
	[GiamGia] [money] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [pk_ChiTietDDH] PRIMARY KEY CLUSTERED 
(
	[SoDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[SoHDN] [nvarchar](20) NOT NULL,
	[MaNoiThat] [nvarchar](20) NULL,
	[SLN] [int] NULL,
	[DonGia] [money] NULL,
	[GiamGia] [money] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [pk_ChiTietHDN] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongViec]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongViec](
	[MaCV] [nvarchar](20) NOT NULL,
	[TenCV] [nvarchar](50) NULL,
 CONSTRAINT [pk_CongViec] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DMNoiThat]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMNoiThat](
	[MaNoiThat] [nvarchar](20) NOT NULL,
	[TenNoiThat] [nvarchar](100) NULL,
	[MaLoai] [nvarchar](20) NULL,
	[MaKieu] [nvarchar](20) NULL,
	[MaMau] [nvarchar](20) NULL,
	[MaChatLieu] [nvarchar](20) NULL,
	[MaNuocSX] [nvarchar](20) NULL,
	[SoLuong] [int] NULL,
	[DonGiaNhap] [money] NULL,
	[DonGiaBan] [money] NULL,
	[Anh] [image] NULL,
	[ThoiGianBaoHanh] [int] NULL,
 CONSTRAINT [pk_DMNoiThat] PRIMARY KEY CLUSTERED 
(
	[MaNoiThat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[SoDDH] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](20) NULL,
	[MaKH] [nvarchar](20) NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[DatCoc] [money] NULL,
	[Thue] [money] NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [pk_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[SoHDN] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](20) NULL,
	[NgayNhap] [datetime] NULL,
	[MaNCC] [nvarchar](20) NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [pk_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](20) NOT NULL,
	[TenKhach] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDT] [nvarchar](20) NULL,
 CONSTRAINT [pk_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KieuDang]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KieuDang](
	[MaKieu] [nvarchar](20) NOT NULL,
	[TenKieu] [nvarchar](50) NULL,
 CONSTRAINT [pk_KieuDang] PRIMARY KEY CLUSTERED 
(
	[MaKieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[MaMau] [nvarchar](20) NOT NULL,
	[TenMau] [nvarchar](50) NULL,
 CONSTRAINT [pk_MauSac] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](20) NOT NULL,
	[TenNCC] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SoDT] [nvarchar](20) NULL,
 CONSTRAINT [pk_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](20) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [datetime] NULL,
	[SDT] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MaCa] [nvarchar](20) NULL,
	[MaCV] [nvarchar](20) NULL,
 CONSTRAINT [pk_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NuocSanXuat]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NuocSanXuat](
	[MaNuocSX] [nvarchar](20) NOT NULL,
	[TenNuocSX] [nvarchar](50) NULL,
 CONSTRAINT [pk_NuocSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNuocSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 13/11/2023 3:07:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaLoai] [nvarchar](20) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [pk_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CaLam] ([MaCa], [TenCa]) VALUES (N'C01', N'Ca sáng')
INSERT [dbo].[CaLam] ([MaCa], [TenCa]) VALUES (N'C02', N'Ca chiều')
INSERT [dbo].[CaLam] ([MaCa], [TenCa]) VALUES (N'C03', N'Ca tối')
INSERT [dbo].[CaLam] ([MaCa], [TenCa]) VALUES (N'C04', N'Cả ngày')
GO
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL01', N'Gỗ Lim')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL02', N'Gỗ Sồi')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL03', N'Gỗ Hương')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL04', N'Gỗ Xoan')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL05', N'Kính')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL06', N'Đá')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL07', N'Gạch')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL08', N'Voan')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL09', N'Bông')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL10', N'Nhựa acrylic')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL11', N'Mây')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL12', N'Vải')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL13', N'Lụa')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL14', N'Pha lê')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL15', N'Da Lộn')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL16', N'Lông')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL17', N'Nhung')
GO
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH01', N'NT01', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH02', N'NT02', 2, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH03', N'NT03', 2, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH04', N'NT04', 4, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH05', N'NT05', 5, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH06', N'NT06', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH07', N'NT07', 2, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH08', N'NT08', 3, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH09', N'NT09', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH10', N'NT10', 2, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH11', N'NT11', 2, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH12', N'NT12', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH13', N'NT13', 3, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH14', N'NT14', 4, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH15', N'NT15', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH16', N'NT16', 2, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH17', N'NT17', 3, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH18', N'NT18', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH19', N'NT19', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH20', N'NT20', 2, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH21', N'NT21', 3, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH22', N'NT22', 3, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH23', N'NT23', 4, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH24', N'NT24', 5, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH25', N'NT25', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH26', N'NT26', 2, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH27', N'NT27', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH28', N'NT28', 1, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH29', N'NT29', 2, NULL, NULL)
INSERT [dbo].[ChiTietDDH] ([SoDDH], [MaNoiThat], [SL], [GiamGia], [ThanhTien]) VALUES (N'DDH30', N'NT30', 1, NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCV], [TenCV]) VALUES (N'CV01', N'Tư vấn sản phẩm')
INSERT [dbo].[CongViec] ([MaCV], [TenCV]) VALUES (N'CV02', N'Kế Toán')
INSERT [dbo].[CongViec] ([MaCV], [TenCV]) VALUES (N'CV03', N'Nhập hàng')
INSERT [dbo].[CongViec] ([MaCV], [TenCV]) VALUES (N'CV04', N'Kiểm Hàng')
INSERT [dbo].[CongViec] ([MaCV], [TenCV]) VALUES (N'CV05', N'Marketing')
INSERT [dbo].[CongViec] ([MaCV], [TenCV]) VALUES (N'CV06', N'Quản lý')
INSERT [dbo].[CongViec] ([MaCV], [TenCV]) VALUES (N'CV07', N'Bán hàng')
GO
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT01', N'Giường công chúa', N'L01', N'K01', N'M20', N'CL04', N'N03', 10, 4000000.0000, 5600000.0000, NULL, 12)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT02', N'Giường ô tô bé trai', N'L01', N'K01', N'M07', N'CL01', N'N02', 15, 8000000.0000, 11000000.0000, NULL, 36)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT03', N'Giường ngủ cao cấp', N'L01', N'K05', N'M05', N'CL03', N'N01', 12, 13000000.0000, 15000000.0000, NULL, 36)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT04', N'Tủ sách cao cấp', N'L02', N'K05', N'M03', N'CL02', N'N01', 14, 3000000.0000, 4000000.0000, NULL, 12)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT05', N'Tủ sách gỗ đa năng chống mối mọt phong cách Hàn Quốc', N'L02', N'K01', N'M04', N'CL03', N'N06', 10, 400000.0000, 500000.0000, NULL, 3)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT06', N'Bàn làm việc đa năng thiết kế cá tính', N'L03', N'K04', N'M06', N'CL04', N'N02', 20, 300000.0000, 366000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT07', N'Bàn làm việc tại nhà phong cách Bắc Âu', N'L03', N'K01', N'M03', N'CL02', N'N02', 25, 400000.0000, 474000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT08', N'Bàn ăn mặt đá nhập khẩu', N'L04', N'K05', N'M09', N'CL06', N'N07', 17, 6900000.0000, 7900000.0000, NULL, 12)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT09', N'Bàn ăn dài cho đại gia đình', N'L04', N'K07', N'M04', N'CL17', N'N07', 18, 4990000.0000, 5500000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT10', N'Rèm cửa size lớn rèm vải lụa cao cấp', N'L05', N'K10', N'M11', N'CL13', N'N05', 20, 400000.0000, 565000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT11', N'Rèm cửa sổ cản nắng, cản sáng 95-100%', N'L05', N'K07', N'M06', N'CL12', N'N04', 21, 90000.0000, 120000.0000, NULL, 0)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT12', N'Rèm cửa dán keo không cần thanh treo', N'L05', N'K11', N'M08', N'CL08', N'N02', 13, 40000.0000, 79000.0000, NULL, 0)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT13', N'Rèm cửa hạt gỗ hoa sen', N'L05', N'K02', N'M11', N'CL04', N'N01', 11, 780000.0000, 960000.0000, NULL, 6)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT14', N'Ghế Sofa thư giãn đọc sách', N'L06', N'K02', N'M15', N'CL15', N'N06', 16, 1400000.0000, 1735000.0000, NULL, 6)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT15', N'Ghế sofa múi vuông lông cừu tách rời', N'L06', N'K02', N'M03', N'CL16', N'N03', 5, 1950000.0000, 2150000.0000, NULL, 6)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT16', N'Ghế sofa thông minh cao cấp mở rộng thành giường linh hoạt', N'L06', N'K04', N'M07', N'CL12', N'N03', 22, 5925000.0000, 6390000.0000, NULL, 12)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT17', N'Ghế xoay cao cấp thiết kế chống mỏi lưng, xoay 360 độ', N'L07', N'K04', N'M05', N'CL12', N'N01', 21, 300000.0000, 349000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT18', N'Ghế gập gấp gọn, bọc da khung sắt', N'L07', N'K01', N'M11', N'CL15', N'N02', 30, 100000.0000, 156000.0000, NULL, 0)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT19', N'Ghế gaming có gác chân cao cấp hàng nhập khẩu', N'L07', N'K04', N'M20', N'CL15', N'N02', 10, 1500000.0000, 1796000.0000, NULL, 6)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT20', N'Ghế bệt tựa lưng siêu êm có thể gấp gọn', N'L07', N'K09', N'M19', N'CL12', N'N05', 15, 200000.0000, 258000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT21', N'Ghế bệt gỗ kiểu Nhật', N'L07', N'K09', N'M16', N'CL01', N'N07', 6, 355000.0000, 420000.0000, NULL, 3)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT22', N'Thảm lông loang siêu mịn', N'L08', N'K01', N'M13', N'CL16', N'N02', 7, 65000.0000, 100000.0000, NULL, 0)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT23', N'Thảm nhung ngắn trải sàn', N'L08', N'K01', N'M09', N'CL17', N'N02', 8, 225000.0000, 270000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT24', N'Đèn ngủ để bàn đế tròn chao vải xếp ly cao cấp', N'L09', N'K05', N'M19', N'CL12', N'N03', 9, 265000.0000, 299000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT25', N'Đèn ngủ tạo hình Baymax', N'L09', N'K11', N'M01', N'CL10', N'N02', 3, 45000.0000, 80000.0000, NULL, 0)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT26', N'Đèn ngủ kiểu ngọn lửa xoay được sáng tạo', N'L09', N'K01', N'M01', N'CL14', N'N04', 4, 99000.0000, 140000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT27', N'Đèn ngủ chiếu sao xoay tự động', N'L09', N'K04', N'M15', N'CL10', N'N02', 5, 266000.0000, 300000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT28', N'Đèn ngủ để bàn hình cây', N'L09', N'K02', N'M03', N'CL10', N'N02', 6, 99000.0000, 150000.0000, NULL, 0)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT29', N'Đèn chùm pha lê cao cấp', N'L10', N'K05', N'M03', N'CL14', N'N06', 7, 1222000.0000, 1500000.0000, NULL, 24)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT30', N'Đèn chùm thả trần pha lê 3 vòng có điều khiển từ xa', N'L10', N'K05', N'M02', N'CL14', N'N06', 2, 3654000.0000, 3798000.0000, NULL, 12)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT31', N'Đèn chùm mây lông vũ', N'L10', N'K01', N'M20', N'CL16', N'N02', 3, 660000.0000, 889000.0000, NULL, 3)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT32', N'Gương soi toàn thân viền gỗ tự nhiên cao cấp', N'L11', N'K02', N'M13', N'CL01', N'N01', 4, 674000.0000, 790000.0000, NULL, 3)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT33', N'Gương soi mái vòm khung nhựa', N'L11', N'K01', N'M20', N'CL10', N'N02', 5, 260000.0000, 325000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT34', N'Bàn trà đạo kiểu Nhật ngồi bệt gấp gọn', N'L12', N'K09', N'M14', N'CL03', N'N07', 6, 1556000.0000, 1710000.0000, NULL, 6)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT35', N'Bàn trà hạt đậu', N'L12', N'K02', N'M01', N'CL02', N'N02', 7, 189000.0000, 250000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT36', N'Bàn trà tròn 2 tầng mặt kính', N'L12', N'K01', N'M01', N'CL05', N'N02', 8, 569000.0000, 650000.0000, NULL, 3)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT37', N'Tủ nhựa 4 cánh 2 ngăn kéo ngang', N'L13', N'K01', N'M19', N'CL10', N'N02', 9, 2550000.0000, 279000.0000, NULL, 3)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT38', N'Tủ treo quần áo trẻ em chân gỗ sồi', N'L13', N'K02', N'M03', N'CL02', N'N01', 2, 189000.0000, 215000.0000, NULL, 1)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT39', N'Tủ quần áo tủ gỗ đa năng', N'L13', N'K02', N'M01', N'CL02', N'N01', 5, 400000.0000, 429000.0000, NULL, 3)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT40', N'Tủ bếp Acrylic', N'L14', N'K01', N'M02', N'CL10', N'N01', 8, 3989000.0000, 4600000.0000, NULL, 12)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT41', N'Tủ bếp cánh kính', N'L14', N'K01', N'M06', N'CL05', N'N04', 9, 8000000.0000, 8300000.0000, NULL, 24)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT42', N'Tủ bếp nhựa', N'L14', N'K01', N'M08', N'CL10', N'N02', 3, 5900000.0000, 6100000.0000, NULL, 24)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT43', N'Ghế bập bênh thư giãn', N'L15', N'K02', N'M14', N'CL12', N'N04', 10, 650000.0000, 790000.0000, NULL, 6)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT44', N'Ghế bập bênh đôi', N'L15', N'K01', N'M15', N'CL12', N'N05', 15, 960000.0000, 1099000.0000, NULL, 6)
INSERT [dbo].[DMNoiThat] ([MaNoiThat], [TenNoiThat], [MaLoai], [MaKieu], [MaMau], [MaChatLieu], [MaNuocSX], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [ThoiGianBaoHanh]) VALUES (N'NT45', N'Ghế bập bênh mây độc thân', N'L15', N'K02', N'M02', N'CL11', N'N01', 17, 1120000.0000, 1909000.0000, NULL, 12)
GO
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH01', N'006', N'KH01', CAST(N'2023-05-23T00:00:00.000' AS DateTime), CAST(N'2023-05-24T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH02', N'008', N'KH02', CAST(N'2023-05-23T00:00:00.000' AS DateTime), CAST(N'2023-05-25T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH03', N'002', N'KH03', CAST(N'2023-04-23T00:00:00.000' AS DateTime), CAST(N'2023-04-26T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH04', N'009', N'KH04', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2023-02-28T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH05', N'001', N'KH05', CAST(N'2023-01-23T00:00:00.000' AS DateTime), CAST(N'2023-01-27T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH06', N'003', N'KH06', CAST(N'2023-03-23T00:00:00.000' AS DateTime), CAST(N'2023-03-26T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH07', N'007', N'KH07', CAST(N'2023-06-23T00:00:00.000' AS DateTime), CAST(N'2023-06-23T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH08', N'005', N'KH08', CAST(N'2023-07-23T00:00:00.000' AS DateTime), CAST(N'2023-07-24T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH09', N'002', N'KH09', CAST(N'2023-08-23T00:00:00.000' AS DateTime), CAST(N'2023-08-29T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH10', N'003', N'KH10', CAST(N'2023-09-23T00:00:00.000' AS DateTime), CAST(N'2023-09-25T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH11', N'006', N'KH11', CAST(N'2023-10-23T00:00:00.000' AS DateTime), CAST(N'2023-10-24T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH12', N'004', N'KH12', CAST(N'2023-11-23T00:00:00.000' AS DateTime), CAST(N'2023-11-27T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH13', N'010', N'KH13', CAST(N'2023-12-23T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH14', N'001', N'KH14', CAST(N'2023-05-11T00:00:00.000' AS DateTime), CAST(N'2023-05-23T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH15', N'001', N'KH15', CAST(N'2023-05-27T00:00:00.000' AS DateTime), CAST(N'2023-05-30T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH16', N'003', N'KH16', CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2023-05-08T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH17', N'009', N'KH17', CAST(N'2023-04-09T00:00:00.000' AS DateTime), CAST(N'2023-04-12T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH18', N'010', N'KH18', CAST(N'2023-09-08T00:00:00.000' AS DateTime), CAST(N'2023-09-13T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH19', N'006', N'KH19', CAST(N'2023-11-26T00:00:00.000' AS DateTime), CAST(N'2023-11-29T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH20', N'004', N'KH20', CAST(N'2023-02-24T00:00:00.000' AS DateTime), CAST(N'2023-03-02T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH21', N'002', N'KH21', CAST(N'2023-07-20T00:00:00.000' AS DateTime), CAST(N'2023-07-23T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH22', N'009', N'KH22', CAST(N'2023-08-10T00:00:00.000' AS DateTime), CAST(N'2023-08-23T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH23', N'008', N'KH23', CAST(N'2023-08-05T00:00:00.000' AS DateTime), CAST(N'2023-08-13T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH24', N'008', N'KH24', CAST(N'2023-12-01T00:00:00.000' AS DateTime), CAST(N'2023-12-12T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH25', N'003', N'KH25', CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2023-12-23T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH26', N'001', N'KH26', CAST(N'2023-03-17T00:00:00.000' AS DateTime), CAST(N'2023-03-23T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH27', N'006', N'KH27', CAST(N'2023-07-19T00:00:00.000' AS DateTime), CAST(N'2023-06-30T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH28', N'009', N'KH28', CAST(N'2023-06-26T00:00:00.000' AS DateTime), CAST(N'2023-06-29T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH29', N'008', N'KH29', CAST(N'2023-04-15T00:00:00.000' AS DateTime), CAST(N'2023-04-27T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([SoDDH], [MaNV], [MaKH], [NgayDat], [NgayGiao], [DatCoc], [Thue], [TongTien]) VALUES (N'DDH30', N'005', N'KH30', CAST(N'2023-08-30T00:00:00.000' AS DateTime), CAST(N'2023-09-03T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN01', N'001', CAST(N'2023-02-15T00:00:00.000' AS DateTime), N'NCC03', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN02', N'003', CAST(N'2023-03-10T00:00:00.000' AS DateTime), N'NCC01', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN03', N'005', CAST(N'2023-04-20T00:00:00.000' AS DateTime), N'NCC02', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN04', N'003', CAST(N'2023-05-17T00:00:00.000' AS DateTime), N'NCC06', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN05', N'004', CAST(N'2023-06-11T00:00:00.000' AS DateTime), N'NCC07', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN06', N'005', CAST(N'2022-11-19T00:00:00.000' AS DateTime), N'NCC02', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN07', N'001', CAST(N'2023-03-21T00:00:00.000' AS DateTime), N'NCC03', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN08', N'008', CAST(N'2023-01-12T00:00:00.000' AS DateTime), N'NCC01', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN09', N'001', CAST(N'2022-12-15T00:00:00.000' AS DateTime), N'NCC05', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN10', N'007', CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'NCC05', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN11', N'009', CAST(N'2023-10-01T00:00:00.000' AS DateTime), N'NCC01', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN12', N'010', CAST(N'2023-09-05T00:00:00.000' AS DateTime), N'NCC06', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN13', N'006', CAST(N'2023-08-07T00:00:00.000' AS DateTime), N'NCC02', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN14', N'001', CAST(N'2023-08-05T00:00:00.000' AS DateTime), N'NCC04', NULL)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC], [TongTien]) VALUES (N'HDN15', N'010', CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'NCC01', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH01', N'Nguyễn Đình Sơn', N'Bắc Ninh', N'0968686868')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH02', N'Đỗ Văn Bắc', N'Hải Dương', N'0905883993')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH03', N'Mạnh Thường Quân', N'Hải Phòng', N'0918688685')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH04', N'Mai Phương Lan', N'Hà Nội', N'0978656790')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH05', N'Nguyễn Thị Phương', N'Hà Nội', N'0395729421')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH06', N'Trần Đăng Hưng', N'Ninh Bình', N'0986464242')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH07', N'Hoàng Thị Hồng', N'Thái Nguyên', N'0973678232')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH08', N'Cẩm Thị Hương', N'TP HCM', N'0987452642')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH09', N'Mai Văn Hùng', N'Phú Thọ', N'0844726424')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH10', N'Lê Thanh Đan', N'Bình Định', N'0965543807')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH11', N'Lê Hoài Nam', N'Hà Nội', N'0837452841')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH12', N'Đinh Minh Trang', N'Quảng Ninh', N'0952943109')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH13', N'Lê Minh Đức', N'Đà Nẵng', N'0884407234')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH14', N'Thạch Thái Phương Trang', N'Hà Nội', N'0963584221')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH15', N'Đặng Thành An', N'Nghệ An', N'0965783945')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH16', N'Lương Quốc Huân', N'Hà Tĩnh', N'0968345258')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH17', N'Nguyễn Hương Giang', N'Bắc Cạn', N'0874869868')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH18', N'Ninh Gia Hân', N'TP HCM', N'0840386822')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH19', N'Kiều Bảo Anh', N'Thái Bình', N'0948712934')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [DiaChi], [SoDT]) VALUES (N'KH20', N'Đỗ Minh Thu', N'Hưng Yên', N'0874637593')
GO
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K01', N'Hiện Đại')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K02', N'Vintage')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K03', N'Nhỏ')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K04', N'Thông Minh')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K05', N'Sang Trọng')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K06', N'Thấp')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K07', N'Dài')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K08', N'Cao')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K09', N'Bệt')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K10', N'To')
INSERT [dbo].[KieuDang] ([MaKieu], [TenKieu]) VALUES (N'K11', N'Năng động')
GO
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M01', N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M02', N'Trắng bạc')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M03', N'Trắng sữa')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M04', N'Trắng xám')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M05', N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M06', N'Đen khói')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M07', N'Xanh lam')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M08', N'Xanh lá cây')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M09', N'Xanh mint')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M10', N'Đỏ')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M11', N'Đỏ sẫm')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M12', N'Đỏ hồng')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M13', N'Nâu')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M14', N'Nâu cà phê')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M15', N'Vàng')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M16', N'Nâu nhạt')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M17', N'Ghi xám')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M18', N'Ghi nhạt')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M19', N'Vàng nhạt')
INSERT [dbo].[MauSac] ([MaMau], [TenMau]) VALUES (N'M20', N'Hồng')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDT]) VALUES (N'NCC01', N'Nội Thất Đoàn Gia Phát - Công Ty TNHH Trang Trí Nội Thất Đoàn Gia Phát', N'32 đường HT05, P. Hiệp Thành, Q. 12, Tp. Hồ Chí Minh, Việt Nam', N'0973919939')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDT]) VALUES (N'NCC02', N'Đồ Nội Thất Gỗ WoodPro Việt Nam - Công Ty TNHH Đầu Tư WoodPro Việt Nam', N'Tổ 28, Thị Trấn Đông Anh, Huyện Đông Anh, Hà Nội, Việt Nam', N'0922222579')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDT]) VALUES (N'NCC03', N'Nội Thất Tân Hồng Nhật - Công Ty TNHH Nội Thất Tân Hồng Nhật', N'Đội 7, X. Kim Quan, H. Thạch Thất, Hà Nội, Việt Nam', N'0842340435')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDT]) VALUES (N'NCC04', N'Nội Thất A Decor - Công Ty TNHH Kiến Trúc - Nội Thất A Decor', N'Showroom + Văn phòng + Xưởng SX: 595/88 Tô Vĩnh Diện, TP. Thủ Dầu Một, Bình Dương, Việt Nam', N'0842341435')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDT]) VALUES (N'NCC05', N'Nội Thất Cao Cấp Emporio - Công Ty TNHH Sản Xuất Long Việt', N'22 Vườn Lài (Nối Dài), KP. 1, P. An Phú Đông, Q. 12, Tp. Hồ Chí Minh, Việt Nam', N'0842341635')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDT]) VALUES (N'NCC06', N'Gỗ Tiến Công Danh - Công Ty TNHH Một Thành Viên Tiến Công Danh', N'Số 46/2, KP. 1, P. Tân Hòa, Tp. Biên Hoà, Đồng Nai, Việt Nam', N'0842341835')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDT]) VALUES (N'NCC07', N'Định Hướng Nội Thất - Công Ty TNHH Một Thành Viên Định Hướng Nội Thất', N'Thửa Đất Số 10, Tờ Bản Đồ Số 44, Ấp An Thành, X. An Tây, TX. Bến Cát, Bình Dương, Việt Nam', N'0842341935')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDT]) VALUES (N'NCC08', N'SSR VINA - Công Ty TNHH SSR VINA', N'Tầng Trệt, Tòa Nhà The Manor Officetel, Số 89 Nguyễn Hữu Cảnh, Phường 22, Quận Bình Thạnh, Tp. Hồ Chí Minh, Việt Nam', N'0842342835')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'001', N'Trần Văn Minh', N'Nam', CAST(N'1981-06-13T00:00:00.000' AS DateTime), N'0966222757', N'Quán Thánh, Quận Ba Đình, Hà Nội', N'C01', N'CV06')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'002', N'Tống Cảnh Sơn', N'Nam', CAST(N'1965-02-23T00:00:00.000' AS DateTime), N'0973155066', N' Liễu Giai, Phường Ngọc Khánh, Quận Ba Đình, Hà Nội', N'C01', N'CV02')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'003', N'Ngô Việt Hương', N'Nữ', CAST(N'1963-04-12T00:00:00.000' AS DateTime), N'0978777311', N'Quán Thánh, quận Ba Đình, Hà Nội', N'C01', N'CV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'004', N'Mai Thị Loan', N'Nữ', CAST(N'1977-02-11T00:00:00.000' AS DateTime), N'0963888509', N'Điện Biên, quận Ba Đình, Hà Nội', N'C02', N'CV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'005', N'Mạc Xuân Tiến', N'Nam', CAST(N'1970-05-23T00:00:00.000' AS DateTime), N'0972696996', N'Kim Mã, phường Ngọc Khánh, quận Ba Đình, Hà Nội', N'C03', N'CV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'006', N'Vũ Hoài Anh', N'Nữ', CAST(N'1968-06-15T00:00:00.000' AS DateTime), N'0986087557', N'Giảng Võ, quận Ba Đình, Hà Nội', N'C04', N'CV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'007', N'Trần Thanh Thanh', N'Nữ', CAST(N'1992-07-15T00:00:00.000' AS DateTime), N'0983640004', N'Nguyễn Phong Sắc, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Hà Nội', N'C02', N'CV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'008', N'Nguyễn Hồng Hạnh', N'Nữ', CAST(N'1962-05-23T00:00:00.000' AS DateTime), N'0868686881', N'Trung Hòa, Phường Yên Hòa, Quận Cầu Giấy, Hà Nội', N'C02', N'CV01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'009', N'Lê Thị Hồng', N'Nữ', CAST(N'1963-06-21T00:00:00.000' AS DateTime), N'0981567290', N'Trần Bình, Phường Mai Dịch, Quận Cầu Giấy, Hà Nội', N'C04', N'CV01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MaCa], [MaCV]) VALUES (N'010', N'Lâm Quốc Khanh', N'Nam', CAST(N'1976-05-11T00:00:00.000' AS DateTime), N'0981020502', N'Xuân Thuỷ, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Hà Nội', N'C04', N'CV05')
GO
INSERT [dbo].[NuocSanXuat] ([MaNuocSX], [TenNuocSX]) VALUES (N'N01', N'Việt Nam')
INSERT [dbo].[NuocSanXuat] ([MaNuocSX], [TenNuocSX]) VALUES (N'N02', N'Trung Quốc')
INSERT [dbo].[NuocSanXuat] ([MaNuocSX], [TenNuocSX]) VALUES (N'N03', N'Thái Lan')
INSERT [dbo].[NuocSanXuat] ([MaNuocSX], [TenNuocSX]) VALUES (N'N04', N'Campuchia')
INSERT [dbo].[NuocSanXuat] ([MaNuocSX], [TenNuocSX]) VALUES (N'N05', N'Lào')
INSERT [dbo].[NuocSanXuat] ([MaNuocSX], [TenNuocSX]) VALUES (N'N06', N'Hàn Quốc')
INSERT [dbo].[NuocSanXuat] ([MaNuocSX], [TenNuocSX]) VALUES (N'N07', N'Nhật Bản')
GO
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L01', N'Giường')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L02', N'Tủ sách')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L03', N'Bàn làm việc')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L04', N'Bàn ăn')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L05', N'Rèm cửa')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L06', N'Sofa')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L07', N'Ghế')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L08', N'Thảm')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L09', N'Đèn ngủ')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L10', N'Đèn chùm')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L11', N'Gương')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L12', N'Bàn trà')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L13', N'Tủ quần áo')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L14', N'Tủ bếp')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (N'L15', N'Ghế bấp bênh')
GO
ALTER TABLE [dbo].[ChiTietDDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDDH_DMNoiThat] FOREIGN KEY([MaNoiThat])
REFERENCES [dbo].[DMNoiThat] ([MaNoiThat])
GO
ALTER TABLE [dbo].[ChiTietDDH] CHECK CONSTRAINT [FK_ChiTietDDH_DMNoiThat]
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDN_DMNoiThat] FOREIGN KEY([MaNoiThat])
REFERENCES [dbo].[DMNoiThat] ([MaNoiThat])
GO
ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [FK_ChiTietHDN_DMNoiThat]
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDN_HoaDonNhap] FOREIGN KEY([SoHDN])
REFERENCES [dbo].[HoaDonNhap] ([SoHDN])
GO
ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [FK_ChiTietHDN_HoaDonNhap]
GO
ALTER TABLE [dbo].[DMNoiThat]  WITH CHECK ADD  CONSTRAINT [FK_DMNoiThat_ChatLieu] FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[ChatLieu] ([MaChatLieu])
GO
ALTER TABLE [dbo].[DMNoiThat] CHECK CONSTRAINT [FK_DMNoiThat_ChatLieu]
GO
ALTER TABLE [dbo].[DMNoiThat]  WITH CHECK ADD  CONSTRAINT [FK_DMNoiThat_KieuDang] FOREIGN KEY([MaKieu])
REFERENCES [dbo].[KieuDang] ([MaKieu])
GO
ALTER TABLE [dbo].[DMNoiThat] CHECK CONSTRAINT [FK_DMNoiThat_KieuDang]
GO
ALTER TABLE [dbo].[DMNoiThat]  WITH CHECK ADD  CONSTRAINT [FK_DMNoiThat_MauSac] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSac] ([MaMau])
GO
ALTER TABLE [dbo].[DMNoiThat] CHECK CONSTRAINT [FK_DMNoiThat_MauSac]
GO
ALTER TABLE [dbo].[DMNoiThat]  WITH CHECK ADD  CONSTRAINT [FK_DMNoiThat_NuocSanXuat] FOREIGN KEY([MaNuocSX])
REFERENCES [dbo].[NuocSanXuat] ([MaNuocSX])
GO
ALTER TABLE [dbo].[DMNoiThat] CHECK CONSTRAINT [FK_DMNoiThat_NuocSanXuat]
GO
ALTER TABLE [dbo].[DMNoiThat]  WITH CHECK ADD  CONSTRAINT [FK_DMNoiThat_TheLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[TheLoai] ([MaLoai])
GO
ALTER TABLE [dbo].[DMNoiThat] CHECK CONSTRAINT [FK_DMNoiThat_TheLoai]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_CaLam] FOREIGN KEY([MaCa])
REFERENCES [dbo].[CaLam] ([MaCa])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_CaLam]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_CongViec] FOREIGN KEY([MaCV])
REFERENCES [dbo].[CongViec] ([MaCV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_CongViec]
GO
USE [master]
GO
ALTER DATABASE [QLNoiThat] SET  READ_WRITE 
GO
