USE [gpm_codeCaFeMienPhi]
GO
/****** Object:  Table [dbo].[CF_Ban]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_Ban](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](250) NULL,
	[IDKhuVuc] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[IDChiNhanh] [int] NULL,
	[DaXoa] [int] NULL,
	[MaBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_CF_Ban] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_BangGia]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_BangGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenBangGia] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_BangGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiNhanh]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiNhanh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaChiNhanh] [nvarchar](50) NULL,
	[TenChiNhanh] [nvarchar](250) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[NgayMo] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[ReportBill] [int] NULL,
	[MayIn] [nvarchar](255) NULL,
	[GiaoDienApDung] [int] NULL,
	[DuLieuMau] [int] NULL,
	[KeyCaiDat] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
 CONSTRAINT [PK_CF_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietBangGia]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietBangGia](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDBangGia] [int] NULL,
	[IDHangHoa] [int] NULL,
	[GiaCu] [float] NULL,
	[GiaMoi] [float] NULL,
	[DaXoa] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_ChiTietBangGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietCongNo]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietCongNo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoHoaDon] [nvarchar](50) NULL,
	[IDNhaCungCap] [int] NULL,
	[HinhThucThanhToan] [nvarchar](150) NULL,
	[IDMaPhieu] [int] NULL,
	[SoTienThanhToan] [float] NULL,
	[NoiDung] [nvarchar](250) NULL,
	[NgayThanhToan] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_ChiTietCongNo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietGio]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietGio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GioBatDau] [datetime] NULL,
	[GioKetThuc] [datetime] NULL,
	[TongGioChoi] [nvarchar](255) NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[IDBan] [int] NULL,
	[IDHoaDon] [int] NULL,
	[TrangThai] [int] NULL,
	[ThanhToan] [int] NULL,
 CONSTRAINT [PK_CF_ChiTietGio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietHoaDon]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietHoaDon](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDHangHoa] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[IDBan] [int] NULL,
	[MaHangHoa] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
	[TrongLuong] [float] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_ChiTietHoaDon_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_ChiTietHoaDon_Temp]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_ChiTietHoaDon_Temp](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDHangHoa] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[IDBan] [int] NULL,
	[MaHangHoa] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
	[TrongLuong] [float] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DatBan]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DatBan](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[GioDat] [nvarchar](150) NULL,
	[IDBan] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_DatBan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DonDatHang]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DonDatHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChiNhanh] [int] NULL,
	[SoDonHang] [nvarchar](50) NULL,
	[IDNguoiLap] [int] NULL,
	[NgayLap] [datetime] NULL,
	[TongTien] [float] NULL,
	[GhiChu] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
	[IDNhaCungCap] [int] NULL,
	[TrangThaiCongNo] [int] NULL,
 CONSTRAINT [PK_CF_DonDatHang_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DonDatHang_ChiTiet]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DonDatHang_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDDonHang] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
	[SoLuong] [float] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CF_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DonDatHang_ChiTiet_Temp]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DonDatHang_ChiTiet_Temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDDonHang] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
	[SoLuong] [float] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CF_DonDatHang_ChiTiet_Temp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_DonViTinh]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_DonViTinh](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenDonViTinh] [nvarchar](255) NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_Gio]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_Gio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaGio] [nvarchar](50) NULL,
	[TyLe] [int] NULL,
	[GioBatDau] [datetime] NULL,
	[GioKetThuc] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_Gio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_HangHoa]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_HangHoa](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaHangHoa] [nvarchar](50) NULL,
	[TenHangHoa] [nvarchar](250) NULL,
	[GiaBan] [float] NULL,
	[IDDonViTinh] [int] NULL,
	[IDNhomHang] [int] NULL,
	[DaXoa] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[GhiChu] [nvarchar](250) NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_HangHoa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_HangHoa_ChiTiet]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_HangHoa_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHangHoa] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TrongLuong] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[NhaCungCap] [nvarchar](250) NULL,
	[IDDonViTinh] [int] NULL,
 CONSTRAINT [PK_CF_HangHoa_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_HangHoa_ChiTiet_Temp]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_HangHoa_ChiTiet_Temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHangHoa] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TrongLuong] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[NhaCungCap] [nvarchar](250) NULL,
	[IDDonViTinh] [int] NULL,
 CONSTRAINT [PK_CF_HangHoa_ChiTiet_Temp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_HoaDon]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_HoaDon](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GioVao] [datetime] NULL,
	[GioRa] [datetime] NULL,
	[IDBan] [int] NULL,
	[TrangThai] [int] NULL,
	[MaHoaDon] [nvarchar](50) NULL,
	[IDNhanVien] [int] NULL,
	[TongTien] [float] NULL,
	[GiamGia] [float] NULL,
	[KhachCanTra] [float] NULL,
	[KhachThanhToan] [float] NULL,
	[TienThua] [float] NULL,
	[TienGio] [float] NULL,
	[TrangThaiKetCa] [int] NULL,
	[LanIn] [int] NULL,
	[HinhThucGiamGia] [nvarchar](50) NULL,
	[TienGiamGia] [float] NULL,
	[TyLeGiamGia] [float] NULL,
	[NgayBan] [datetime] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KetCa]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KetCa](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[TongTienSauCa] [float] NULL,
	[IDNhanVien] [int] NULL,
	[IDChiNhanh] [int] NULL,
	[TongTien] [float] NULL,
	[GiamGia] [float] NULL,
 CONSTRAINT [PK_CF_KetCa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KeyCode]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KeyCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GetKey] [nvarchar](255) NULL,
	[NgayKichHoat] [datetime] NULL,
	[ThoiGianSuDung] [int] NULL,
 CONSTRAINT [PK_CF_KeyCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KeyKichHoat]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KeyKichHoat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKey] [nvarchar](250) NULL,
	[ThoiHanSuDung] [datetime] NULL,
	[SoLanKichHoat] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_KeyKichHoat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KhuVuc]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KhuVuc](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaKhuVuc] [nvarchar](50) NULL,
	[KyHieu] [nvarchar](50) NULL,
	[TenKhuVuc] [nvarchar](250) NULL,
	[GiaKhuVuc] [float] NULL,
	[IDChiNhanh] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[GhiChu] [nvarchar](250) NULL,
	[IDBangGia] [int] NULL,
 CONSTRAINT [PK_CF_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KiemKho]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KiemKho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguoiDung] [int] NULL,
	[NgayKiemKho] [datetime] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[NgayCapNhat] [datetime] NULL,
	[TrangThai] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_KiemKho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KiemKho_ChiTiet]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KiemKho_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDPhieuKiemKho] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TonKho] [float] NULL,
	[ChenhLech] [float] NULL,
	[ThucTe] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
 CONSTRAINT [PK_CF_KiemKho_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_KiemKho_ChiTiet_Temp]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_KiemKho_ChiTiet_Temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDPhieuKiemKho] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TonKho] [float] NULL,
	[ChenhLech] [float] NULL,
	[ThucTe] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[IDDonViTinh] [int] NULL,
 CONSTRAINT [PK_CF_KiemKho_ChiTiet_Temp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_LichSuKho]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_LichSuKho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguoiDung] [int] NULL,
	[IDHangHoa] [int] NULL,
	[GiaCu] [float] NULL,
	[GiaMoi] [float] NULL,
	[NgayThayDoi] [datetime] NULL,
 CONSTRAINT [PK_GPM_LichSuKho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_LichSuThayDoiGia]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_LichSuThayDoiGia](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDNguoiDung] [int] NULL,
	[MaHang] [nvarchar](50) NULL,
	[TenHang] [nvarchar](50) NULL,
	[IDDVT] [int] NULL,
	[GiaCu] [float] NULL,
	[GiaMoi] [float] NULL,
	[NgayThayDoi] [datetime] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_GPM_LichSuThayDoiGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_LichSuTruyCap]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_LichSuTruyCap](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDChiNhanh] [int] NULL,
	[IDNhom] [int] NULL,
	[IDNguoiDung] [int] NULL,
	[Menu] [nvarchar](50) NULL,
	[HanhDong] [nvarchar](50) NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [PK_GPM_LichSuTruyCap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NguoiDung]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [nvarchar](50) NULL,
	[TenNguoiDung] [nvarchar](250) NULL,
	[TenDangNhap] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](255) NULL,
	[Email] [nvarchar](150) NULL,
	[IDNhomNguoiDung] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NguyenLieu]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NguyenLieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[TenNguyenLieu] [nvarchar](250) NULL,
	[NhaCungCap] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[IDDonViTinh] [int] NULL,
	[GiaMua] [float] NULL,
	[GiaBan] [float] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_CF_NguyenLieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NguyenLieu_Barcode]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NguyenLieu_Barcode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHangHoa] [int] NULL,
	[Barcode] [nvarchar](255) NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_NguyenLieu_Barcode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NhaCungCap]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NhaCungCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](250) NOT NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[NguoiLienHe] [nvarchar](50) NULL,
	[MaSoThue] [nvarchar](50) NULL,
	[LinhVucKinhDoanh] [nvarchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
	[GhiChu] [nvarchar](250) NULL,
	[DaXoa] [int] NULL,
	[CongNo] [float] NULL,
 CONSTRAINT [PK_CF_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NhomHangHoa]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NhomHangHoa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNhom] [nvarchar](50) NULL,
	[TenNhom] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_NhomHangHoa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_NhomNguoiDung]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_NhomNguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNhom] [nvarchar](50) NULL,
	[TenNhom] [nvarchar](250) NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_NhomNguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_PhieuXuatKhac]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_PhieuXuatKhac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNhanVien] [int] NULL,
	[NgayLapPhieu] [datetime] NULL,
	[IDLyDoXuat] [int] NULL,
	[IDChiNhanh] [int] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[TongTien] [float] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_CF_PhieuXuatKhac] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_PhieuXuatKhac_ChiTiet]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_PhieuXuatKhac_ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDPhieuXuatKhac] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TonKho] [float] NULL,
	[IDDonViTinh] [int] NULL,
	[SoLuongXuat] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CF_PhieuXuatKhac_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_PhieuXuatKhac_ChiTiet_Temp]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_PhieuXuatKhac_ChiTiet_Temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDPhieuXuatKhac] [int] NULL,
	[IDNguyenLieu] [int] NULL,
	[TonKho] [float] NULL,
	[IDDonViTinh] [int] NULL,
	[SoLuongXuat] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CF_PhieuXuatKhac_ChiTiet_Temp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_TongChi]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_TongChi](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LoaiChi] [nvarchar](250) NULL,
	[TienChi] [float] NULL,
	[NgayChi] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
	[DaXoa] [int] NULL,
	[IDChiNhanh] [int] NULL,
 CONSTRAINT [PK_CF_TongChi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_TonKho]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_TonKho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNguyenLieu] [int] NULL,
	[IDChiNhanh] [int] NULL,
	[TrongLuong] [float] NULL,
	[MaNguyenLieu] [nvarchar](50) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_CF_TonKho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CF_TrangThaiPhieuXuatKhac]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CF_TrangThaiPhieuXuatKhac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](250) NULL,
 CONSTRAINT [PK_GPM_TrangThaiPhieuXuatKhac] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPM_ChiTietBangGia]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPM_ChiTietBangGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDBangGia] [int] NULL,
	[IDHangHoa] [int] NULL,
	[GiaHeThong] [float] NULL,
	[GiaBanApDung] [float] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_GPM_ChiTietBangGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPM_ChiTietHoaDon]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPM_ChiTietHoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDHangHoa] [int] NULL,
	[GiaMua] [float] NULL,
	[GiaBan] [float] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [float] NULL,
	[DaXoa] [int] NULL,
	[NgayBan] [datetime] NULL,
	[IDKho] [int] NULL,
 CONSTRAINT [PK_GPM_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPM_HoaDon]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPM_HoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [nvarchar](255) NULL,
	[IDKho] [int] NULL,
	[IDKhachHang] [int] NULL,
	[IDNhanVien] [int] NULL,
	[NgayBan] [smalldatetime] NULL,
	[SoLuongHang] [int] NULL,
	[TongTien] [float] NULL,
	[GiamGia] [float] NULL,
	[KhachCanTra] [float] NULL,
	[KhachThanhToan] [float] NULL,
	[SoLanIn] [int] NULL,
	[DaXoa] [int] NULL,
	[HinhThucGiamGia] [nvarchar](50) NULL,
	[TyLeGiam] [float] NULL,
 CONSTRAINT [PK_GPM_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPM_KhachHang]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPM_KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_GPM_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPM_LichSuKho]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPM_LichSuKho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKho] [int] NULL,
	[IDHangHoa] [int] NULL,
	[IDNhanVien] [int] NULL,
	[SoLuong] [int] NULL,
	[SoLuongMoi] [int] NULL,
	[NoiDung] [nvarchar](200) NULL,
	[NgayCapNhat] [datetime] NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_GPM_LichSuKho_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Setting]    Script Date: 21/03/2018 1:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[CongTy] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[TinhGio] [int] NULL,
	[TestDuLieu] [nvarchar](255) NULL,
	[ReportBill] [int] NULL,
	[MayIn] [nvarchar](255) NULL,
	[CauHinhServer] [int] NULL,
	[GiaoDienApDung] [int] NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CF_Ban] ON 

INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (131, N'A - 1', 37, 0, CAST(0x0000A8AA00C3CEF0 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (132, N'A - 2', 37, 0, CAST(0x0000A8AA00C3CEFA AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (133, N'A - 3', 37, 0, CAST(0x0000A8AA00C3CF03 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (134, N'A - 4', 37, 0, CAST(0x0000A8AA00C3CF0E AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (135, N'A - 5', 37, 0, CAST(0x0000A8AA00C3CF17 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (136, N'A - 6', 37, 0, CAST(0x0000A8AA00C3CF21 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (137, N'A - 7', 37, 0, CAST(0x0000A8AA00C3CF2A AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (138, N'A - 8', 37, 0, CAST(0x0000A8AA00C3CF33 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (139, N'A - 9', 37, 0, CAST(0x0000A8AA00C3CF3E AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (140, N'A - 10', 37, 0, CAST(0x0000A8AA00C3CF48 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (141, N'A - 11', 37, 0, CAST(0x0000A8AA00C3CF51 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (142, N'A - 12', 37, 0, CAST(0x0000A8AA00C3CF5B AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (143, N'A - 13', 37, 0, CAST(0x0000A8AA00C3CF64 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (144, N'A - 14', 37, 0, CAST(0x0000A8AA00C3CF6D AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (145, N'A - 15', 37, 0, CAST(0x0000A8AA00C3CF77 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (146, N'A - 16', 37, 0, CAST(0x0000A8AA00C3CF80 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (147, N'A - 17', 37, 0, CAST(0x0000A8AA00C3CF8A AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (148, N'A - 18', 37, 0, CAST(0x0000A8AA00C3CF95 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (149, N'A - 19', 37, 0, CAST(0x0000A8AA00C3CF9E AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (150, N'A - 20', 37, 0, CAST(0x0000A8AA00C3CFA7 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (151, N'A - 21', 37, 0, CAST(0x0000A8AA00C3CFB0 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (152, N'A - 22', 37, 0, CAST(0x0000A8AA00C3CFB9 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (153, N'A - 23', 37, 0, CAST(0x0000A8AA00C3CFC3 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (154, N'A - 24', 37, 0, CAST(0x0000A8AA00C3CFCC AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (155, N'A - 25', 37, 0, CAST(0x0000A8AA00C3CFD5 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (156, N'A - 26', 37, 0, CAST(0x0000A8AA00C3CFDE AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (157, N'A - 27', 37, 0, CAST(0x0000A8AA00C3CFE8 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (158, N'A - 28', 37, 0, CAST(0x0000A8AA00C3CFF1 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (159, N'A - 29', 37, 0, CAST(0x0000A8AA00C3CFFB AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (160, N'A - 30', 37, 0, CAST(0x0000A8AA00C3D004 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (161, N'A - 31', 37, 0, CAST(0x0000A8AA00C3D00E AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (162, N'A - 32', 37, 0, CAST(0x0000A8AA00C3D017 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (163, N'A - 33', 37, 0, CAST(0x0000A8AA00C3D020 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (164, N'A - 34', 37, 0, CAST(0x0000A8AA00C3D02A AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (165, N'A - 35', 37, 0, CAST(0x0000A8AA00C3D034 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (166, N'A - 36', 37, 0, CAST(0x0000A8AA00C3D03E AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (167, N'A - 37', 37, 0, CAST(0x0000A8AA00C3D047 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (168, N'A - 38', 37, 0, CAST(0x0000A8AA00C3D052 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (169, N'A - 39', 37, 0, CAST(0x0000A8AA00C3D05B AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (170, N'A - 40', 37, 0, CAST(0x0000A8AA00C3D064 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (171, N'A - 41', 37, 0, CAST(0x0000A8AA00C3D06E AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (172, N'A - 42', 37, 0, CAST(0x0000A8AA00C3D077 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (173, N'A - 43', 37, 0, CAST(0x0000A8AA00C3D080 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (174, N'A - 44', 37, 0, CAST(0x0000A8AA00C3D08A AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (175, N'A - 45', 37, 0, CAST(0x0000A8AA00C3D093 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (176, N'A - 46', 37, 0, CAST(0x0000A8AA00C3D09C AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (177, N'A - 47', 37, 0, CAST(0x0000A8AA00C3D0A5 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (178, N'A - 48', 37, 0, CAST(0x0000A8AA00C3D0AE AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (179, N'A - 49', 37, 0, CAST(0x0000A8AA00C3D0BA AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (180, N'A - 50', 37, 0, CAST(0x0000A8AA00C3D0C5 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (181, N'A - 51', 37, 0, CAST(0x0000A8AA00C3D0D0 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (182, N'A - 52', 37, 0, CAST(0x0000A8AA00C3D0DB AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (183, N'A - 53', 37, 0, CAST(0x0000A8AA00C3D0E6 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (184, N'A - 54', 37, 0, CAST(0x0000A8AA00C3D0F1 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (185, N'A - 55', 37, 0, CAST(0x0000A8AA00C3D0FB AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (186, N'A - 56', 37, 0, CAST(0x0000A8AA00C3D105 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (187, N'A - 57', 37, 0, CAST(0x0000A8AA00C3D10E AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (188, N'A - 58', 37, 0, CAST(0x0000A8AA00C3D117 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (189, N'A - 59', 37, 0, CAST(0x0000A8AA00C3D121 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (190, N'A - 60', 37, 0, CAST(0x0000A8AA00C3D12A AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (191, N'A - 61', 37, 0, CAST(0x0000A8AA00C3D134 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (192, N'A - 62', 37, 0, CAST(0x0000A8AA00C3D13D AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (193, N'A - 63', 37, 0, CAST(0x0000A8AA00C3D146 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (194, N'A - 64', 37, 0, CAST(0x0000A8AA00C3D150 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (195, N'A - 65', 37, 0, CAST(0x0000A8AA00C3D159 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (196, N'A - 66', 37, 0, CAST(0x0000A8AA00C3D162 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (197, N'A - 67', 37, 0, CAST(0x0000A8AA00C3D16C AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (198, N'A - 68', 37, 0, CAST(0x0000A8AA00C3D175 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (199, N'A - 69', 37, 0, CAST(0x0000A8AA00C3D180 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (200, N'A - 70', 37, 0, CAST(0x0000A8AA00C3D18F AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (201, N'A - 71', 37, 0, CAST(0x0000A8AA00C3D198 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (202, N'A - 72', 37, 0, CAST(0x0000A8AA00C3D1A2 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (203, N'A - 73', 37, 0, CAST(0x0000A8AA00C3D1AB AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (204, N'A - 74', 37, 0, CAST(0x0000A8AA00C3D1B5 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (205, N'A - 75', 37, 0, CAST(0x0000A8AA00C3D1BE AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (206, N'A - 76', 37, 0, CAST(0x0000A8AA00C3D1C7 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (207, N'A - 77', 37, 0, CAST(0x0000A8AA00C3D1D1 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (208, N'A - 78', 37, 0, CAST(0x0000A8AA00C3D1DB AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (209, N'A - 79', 37, 0, CAST(0x0000A8AA00C3D1E6 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (210, N'A - 80', 37, 0, CAST(0x0000A8AA00C3D1F1 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (211, N'A - 81', 37, 0, CAST(0x0000A8AA00C3D1FC AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (212, N'A - 82', 37, 0, CAST(0x0000A8AA00C3D207 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (213, N'A - 83', 37, 0, CAST(0x0000A8AA00C3D211 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (214, N'A - 84', 37, 0, CAST(0x0000A8AA00C3D21B AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (215, N'A - 85', 37, 0, CAST(0x0000A8AA00C3D224 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (216, N'A - 86', 37, 0, CAST(0x0000A8AA00C3D22D AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (217, N'A - 87', 37, 0, CAST(0x0000A8AA00C3D237 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (218, N'A - 88', 37, 0, CAST(0x0000A8AA00C3D243 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (219, N'A - 89', 37, 0, CAST(0x0000A8AA00C3D24D AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (220, N'A - 90', 37, 0, CAST(0x0000A8AA00C3D257 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (221, N'A - 91', 37, 0, CAST(0x0000A8AA00C3D260 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (222, N'A - 92', 37, 0, CAST(0x0000A8AA00C3D26A AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (223, N'A - 93', 37, 0, CAST(0x0000A8AA00C3D273 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (224, N'A - 94', 37, 0, CAST(0x0000A8AA00C3D27C AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (225, N'A - 95', 37, 0, CAST(0x0000A8AA00C3D285 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (226, N'A - 96', 37, 0, CAST(0x0000A8AA00C3D28F AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (227, N'A - 97', 37, 0, CAST(0x0000A8AA00C3D298 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (228, N'A - 98', 37, 0, CAST(0x0000A8AA00C3D2A1 AS DateTime), 1, 0, N'')
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (229, N'A - 99', 37, 0, CAST(0x0000A8AA00C3D2AB AS DateTime), 1, 0, N'')
GO
INSERT [dbo].[CF_Ban] ([ID], [TenBan], [IDKhuVuc], [TrangThai], [NgayCapNhat], [IDChiNhanh], [DaXoa], [MaBan]) VALUES (230, N'A - 100', 37, 0, CAST(0x0000A8AA00C3D2B5 AS DateTime), 1, 0, N'')
SET IDENTITY_INSERT [dbo].[CF_Ban] OFF
SET IDENTITY_INSERT [dbo].[CF_BangGia] ON 

INSERT [dbo].[CF_BangGia] ([ID], [TenBangGia], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (5, N'Bảng Giá VIP', CAST(0x0000A8A801109C1A AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[CF_BangGia] OFF
SET IDENTITY_INSERT [dbo].[CF_ChiNhanh] ON 

INSERT [dbo].[CF_ChiNhanh] ([ID], [MaChiNhanh], [TenChiNhanh], [DienThoai], [DiaChi], [NgayMo], [NgayCapNhat], [DaXoa], [ReportBill], [MayIn], [GiaoDienApDung], [DuLieuMau], [KeyCaiDat], [Email]) VALUES (1, N'0001', N'GPM 1', N'02966275595', N'Bình Khánh  - Long Xuyên ', CAST(0x0000A7D000000000 AS DateTime), CAST(0x0000A8A800FD4D19 AS DateTime), 0, 80, N'XP-80C', 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CF_ChiNhanh] OFF
SET IDENTITY_INSERT [dbo].[CF_ChiTietBangGia] ON 

INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa], [IDChiNhanh]) VALUES (8, 7, 6, 12000, 12000, 0, 1)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa], [IDChiNhanh]) VALUES (11, 7, 7, 12000, 12000, 0, 1)
INSERT [dbo].[CF_ChiTietBangGia] ([ID], [IDBangGia], [IDHangHoa], [GiaCu], [GiaMoi], [DaXoa], [IDChiNhanh]) VALUES (12, 5, 8, 15000, 15000, 0, 1)
SET IDENTITY_INSERT [dbo].[CF_ChiTietBangGia] OFF
SET IDENTITY_INSERT [dbo].[CF_DonDatHang] ON 

INSERT [dbo].[CF_DonDatHang] ([ID], [IDChiNhanh], [SoDonHang], [IDNguoiLap], [NgayLap], [TongTien], [GhiChu], [NgayCapNhat], [IDNhaCungCap], [TrangThaiCongNo]) VALUES (82, 1, N'1-12032018-093202', 1, CAST(0x0000A8A100000000 AS DateTime), 200000, N'', CAST(0x0000A8A1009D4F15 AS DateTime), 11, 1)
INSERT [dbo].[CF_DonDatHang] ([ID], [IDChiNhanh], [SoDonHang], [IDNguoiLap], [NgayLap], [TongTien], [GhiChu], [NgayCapNhat], [IDNhaCungCap], [TrangThaiCongNo]) VALUES (83, 1, N'1-12032018-093405', 1, CAST(0x0000A8A100000000 AS DateTime), 165000, N'', CAST(0x0000A8A1009DD840 AS DateTime), 11, 1)
INSERT [dbo].[CF_DonDatHang] ([ID], [IDChiNhanh], [SoDonHang], [IDNguoiLap], [NgayLap], [TongTien], [GhiChu], [NgayCapNhat], [IDNhaCungCap], [TrangThaiCongNo]) VALUES (84, 1, N'12032018-094315', 1, CAST(0x0000A8A100000000 AS DateTime), 1250000, N'', CAST(0x0000A8A100A04DCD AS DateTime), 13, 0)
SET IDENTITY_INSERT [dbo].[CF_DonDatHang] OFF
SET IDENTITY_INSERT [dbo].[CF_DonDatHang_ChiTiet] ON 

INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (291, 82, 232, N'0000001', 5, 10, 10000, NULL)
INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (292, 82, 233, N'0000002', 5, 10, 10000, NULL)
INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (293, 83, 232, N'0000001', 5, 10, 11000, NULL)
INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (294, 83, 233, N'0000002', 5, 5, 11000, NULL)
INSERT [dbo].[CF_DonDatHang_ChiTiet] ([ID], [IDDonHang], [IDNguyenLieu], [MaNguyenLieu], [IDDonViTinh], [SoLuong], [DonGia], [ThanhTien]) VALUES (295, 84, 232, N'0000001', 5, 10, 125000, NULL)
SET IDENTITY_INSERT [dbo].[CF_DonDatHang_ChiTiet] OFF
SET IDENTITY_INSERT [dbo].[CF_DonViTinh] ON 

INSERT [dbo].[CF_DonViTinh] ([ID], [TenDonViTinh], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (35, N'CÁI', CAST(0x0000A8AA00C3868B AS DateTime), 0, 1)
INSERT [dbo].[CF_DonViTinh] ([ID], [TenDonViTinh], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (36, N'LY', CAST(0x0000A8AA00C38BAA AS DateTime), 0, 1)
INSERT [dbo].[CF_DonViTinh] ([ID], [TenDonViTinh], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (37, N'CHÉN', CAST(0x0000A8AA00C39090 AS DateTime), 0, 1)
INSERT [dbo].[CF_DonViTinh] ([ID], [TenDonViTinh], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (38, N'DĨA', CAST(0x0000A8AA00C3955A AS DateTime), 0, 1)
INSERT [dbo].[CF_DonViTinh] ([ID], [TenDonViTinh], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (39, N'TÔ', CAST(0x0000A8AA00C39A50 AS DateTime), 0, 1)
INSERT [dbo].[CF_DonViTinh] ([ID], [TenDonViTinh], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (40, N'LON', CAST(0x0000A8AA00C39F3C AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[CF_DonViTinh] OFF
SET IDENTITY_INSERT [dbo].[CF_HangHoa] ON 

INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu], [IDChiNhanh]) VALUES (6, N'000006', N'7 up', 12000, 36, 78, 0, CAST(0x0000A8AA00C40CCD AS DateTime), N'', 1)
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu], [IDChiNhanh]) VALUES (7, N'000007', N'O độ', 12000, 36, 78, 0, CAST(0x0000A8AA00C4207D AS DateTime), N'', 1)
INSERT [dbo].[CF_HangHoa] ([ID], [MaHangHoa], [TenHangHoa], [GiaBan], [IDDonViTinh], [IDNhomHang], [DaXoa], [NgayCapNhat], [GhiChu], [IDChiNhanh]) VALUES (8, N'000008', N'Cơm tấm', 15000, 38, 79, 0, CAST(0x0000A8AA00C4317E AS DateTime), N'', 1)
SET IDENTITY_INSERT [dbo].[CF_HangHoa] OFF
SET IDENTITY_INSERT [dbo].[CF_HangHoa_ChiTiet] ON 

INSERT [dbo].[CF_HangHoa_ChiTiet] ([ID], [IDHangHoa], [IDNguyenLieu], [TrongLuong], [MaNguyenLieu], [NhaCungCap], [IDDonViTinh]) VALUES (14, 721, 233, 1, N'0000002', N'', 5)
INSERT [dbo].[CF_HangHoa_ChiTiet] ([ID], [IDHangHoa], [IDNguyenLieu], [TrongLuong], [MaNguyenLieu], [NhaCungCap], [IDDonViTinh]) VALUES (16, 722, 232, 1, N'0000001', N'', 5)
SET IDENTITY_INSERT [dbo].[CF_HangHoa_ChiTiet] OFF
SET IDENTITY_INSERT [dbo].[CF_KeyCode] ON 

INSERT [dbo].[CF_KeyCode] ([ID], [GetKey], [NgayKichHoat], [ThoiGianSuDung]) VALUES (11, N'e71837bfa38055c0bd76b2802e663699494bd5b', CAST(0x0000A89B009D3050 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CF_KeyCode] OFF
SET IDENTITY_INSERT [dbo].[CF_KhuVuc] ON 

INSERT [dbo].[CF_KhuVuc] ([ID], [MaKhuVuc], [KyHieu], [TenKhuVuc], [GiaKhuVuc], [IDChiNhanh], [NgayCapNhat], [DaXoa], [GhiChu], [IDBangGia]) VALUES (37, N'0001', N'A', N'Khu A', 0, 1, CAST(0x0000A8A801114600 AS DateTime), 0, N'', 5)
SET IDENTITY_INSERT [dbo].[CF_KhuVuc] OFF
SET IDENTITY_INSERT [dbo].[CF_KiemKho] ON 

INSERT [dbo].[CF_KiemKho] ([ID], [IDNguoiDung], [NgayKiemKho], [GhiChu], [NgayCapNhat], [TrangThai], [IDChiNhanh]) VALUES (2, 1, CAST(0x0000A8A100000000 AS DateTime), N'123', CAST(0x0000A8A100A3DF23 AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[CF_KiemKho] OFF
SET IDENTITY_INSERT [dbo].[CF_KiemKho_ChiTiet] ON 

INSERT [dbo].[CF_KiemKho_ChiTiet] ([ID], [IDPhieuKiemKho], [IDNguyenLieu], [TonKho], [ChenhLech], [ThucTe], [MaNguyenLieu], [IDDonViTinh]) VALUES (3, 2, 232, 28, 2, 30, N'0000001', 5)
INSERT [dbo].[CF_KiemKho_ChiTiet] ([ID], [IDPhieuKiemKho], [IDNguyenLieu], [TonKho], [ChenhLech], [ThucTe], [MaNguyenLieu], [IDDonViTinh]) VALUES (4, 2, 233, 14, 1, 15, N'0000002', 5)
SET IDENTITY_INSERT [dbo].[CF_KiemKho_ChiTiet] OFF
SET IDENTITY_INSERT [dbo].[CF_LichSuTruyCap] ON 

INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4841, 1, 2, 7, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A89A010C730B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4842, 1, 2, 7, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A89B009BA614 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4843, 1, 2, 7, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A89B009D369B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4844, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A89B00A09483 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4845, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A10096166E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4846, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009630C0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4847, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A100963DF0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4848, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A100964064 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4849, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A10096C908 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4850, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A100979FBA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4851, 1, 1, 1, N'Quản lý khu vực', N'Thêm khu vực: Lầu 1', CAST(0x0000A8A10097C781 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4852, 1, 1, 1, N'Quản lý khu vực', N'Thêm khu vực: Lầu 2', CAST(0x0000A8A10097D08D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4853, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 1', CAST(0x0000A8A10097DB79 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4854, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 2', CAST(0x0000A8A10097DB7A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4855, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 3', CAST(0x0000A8A10097DB7A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4856, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 4', CAST(0x0000A8A10097DB7B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4857, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 5', CAST(0x0000A8A10097DB7B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4858, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 6', CAST(0x0000A8A10097DB7C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4859, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 7', CAST(0x0000A8A10097DB7C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4860, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 8', CAST(0x0000A8A10097DB7C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4861, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 9', CAST(0x0000A8A10097DB7D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4862, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 10', CAST(0x0000A8A10097DB7D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4863, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 11', CAST(0x0000A8A10097DB7E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4864, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 12', CAST(0x0000A8A10097DB7E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4865, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 13', CAST(0x0000A8A10097DB7F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4866, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 14', CAST(0x0000A8A10097DB7F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4867, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 15', CAST(0x0000A8A10097DB80 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4868, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 16', CAST(0x0000A8A10097DB81 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4869, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 17', CAST(0x0000A8A10097DB81 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4870, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 18', CAST(0x0000A8A10097DB82 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4871, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 19', CAST(0x0000A8A10097DB82 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4872, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 20', CAST(0x0000A8A10097DB83 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4873, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 21', CAST(0x0000A8A10097DB83 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4874, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 22', CAST(0x0000A8A10097DB83 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4875, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 23', CAST(0x0000A8A10097DB83 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4876, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 24', CAST(0x0000A8A10097DB84 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4877, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 25', CAST(0x0000A8A10097DB84 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4878, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 26', CAST(0x0000A8A10097DB85 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4879, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 27', CAST(0x0000A8A10097DB85 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4880, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 28', CAST(0x0000A8A10097DB85 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4881, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 29', CAST(0x0000A8A10097DB86 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4882, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L1 - 30', CAST(0x0000A8A10097DB86 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4883, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 1', CAST(0x0000A8A10097E51E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4884, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 2', CAST(0x0000A8A10097E51F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4885, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 3', CAST(0x0000A8A10097E51F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4886, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 4', CAST(0x0000A8A10097E51F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4887, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 5', CAST(0x0000A8A10097E51F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4888, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 6', CAST(0x0000A8A10097E520 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4889, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 7', CAST(0x0000A8A10097E520 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4890, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 8', CAST(0x0000A8A10097E521 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4891, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 9', CAST(0x0000A8A10097E525 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4892, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 10', CAST(0x0000A8A10097E526 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4893, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 11', CAST(0x0000A8A10097E526 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4894, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 12', CAST(0x0000A8A10097E526 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4895, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 13', CAST(0x0000A8A10097E527 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4896, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 14', CAST(0x0000A8A10097E527 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4897, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 15', CAST(0x0000A8A10097E527 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4898, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 16', CAST(0x0000A8A10097E528 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4899, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 17', CAST(0x0000A8A10097E528 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4900, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 18', CAST(0x0000A8A10097E528 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4901, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 19', CAST(0x0000A8A10097E529 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4902, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 20', CAST(0x0000A8A10097E529 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4903, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 21', CAST(0x0000A8A10097E529 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4904, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 22', CAST(0x0000A8A10097E52A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4905, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 23', CAST(0x0000A8A10097E52A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4906, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 24', CAST(0x0000A8A10097E52B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4907, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 25', CAST(0x0000A8A10097E52B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4908, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 26', CAST(0x0000A8A10097E52B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4909, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 27', CAST(0x0000A8A10097E52B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4910, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 28', CAST(0x0000A8A10097E52C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4911, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 29', CAST(0x0000A8A10097E52C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4912, 1, 1, 1, N'Quản lý bàn', N'Thêm bàn: L2 - 30', CAST(0x0000A8A10097E52D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4913, 1, 1, 1, N'Quản lý nguyên liệu', N'Thêm nguyên liệu: String Dâu', CAST(0x0000A8A100996A42 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4914, 1, 1, 1, N'Quản lý hàng hóa', N'Xóa nguyên liệu: 15', CAST(0x0000A8A1009973AE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4915, 1, 1, 1, N'Quản lý hàng hóa', N'Thêm nguyên liệu: 231', CAST(0x0000A8A100997962 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4916, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009980D3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4917, 1, 1, 1, N'Quản lý nguyên liệu', N'Cập nhật nguyên liệu: 7Up', CAST(0x0000A8A10099A049 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4918, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật nguyên liệu: 230', CAST(0x0000A8A10099AAA8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4919, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A10099BAE4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4920, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A10099C854 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4921, 1, 1, 1, N'Quản lý khu vực', N'Cập nhật khu vực: 32', CAST(0x0000A8A1009A0429 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4922, 1, 1, 1, N'Quản lý khu vực', N'Cập nhật khu vực: 35', CAST(0x0000A8A1009A0749 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4923, 1, 1, 1, N'Quản lý khu vực', N'Cập nhật khu vực: 36', CAST(0x0000A8A1009A0B2D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4924, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009A151A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4925, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009ACCA5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4926, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009AD060 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4927, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A1009AF7B8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4928, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009AFA55 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4929, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009AFBAD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4930, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009B736C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4931, 1, 1, 1, N'Quản lý nguyên liệu', N'Thêm nguyên liệu: String dâu', CAST(0x0000A8A1009B87D4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4932, 1, 1, 1, N'Quản lý nguyên liệu', N'Thêm nguyên liệu: 7Up', CAST(0x0000A8A1009B9407 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4933, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật nguyên liệu: 233', CAST(0x0000A8A1009BA0AD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4934, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật nguyên liệu: 232', CAST(0x0000A8A1009BA890 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4935, 1, 1, 1, N'Quản lý hàng hóa', N'Cập nhật hàng hóa: 722', CAST(0x0000A8A1009BB19D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4936, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009BB3FD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4937, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009BB554 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4938, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009BBA4A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4939, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009C0315 AS DateTime))
GO
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4940, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009C065B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4941, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009C3C4B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4942, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009C3D7C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4943, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A1009D152D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4944, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009D19C7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4945, 1, 1, 1, N'Thêm đơn hàng', N'Thêm đơn đặt hàng', CAST(0x0000A8A1009D4F29 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4946, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009D4F61 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4947, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009D52C9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4948, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009D556C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4949, 1, 1, 1, N'Thêm đơn hàng', N'Thêm đơn đặt hàng', CAST(0x0000A8A1009DD843 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4950, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009DD856 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4951, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009E2C6C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4952, 1, 1, 1, N'Nhà cung cấp', N'Thêm nhà cung cấp: Khách sỉ', CAST(0x0000A8A1009E3A54 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4953, 1, 1, 1, N'Nhà cung cấp', N'Thêm nhà cung cấp: Anh hùng', CAST(0x0000A8A1009E4106 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4954, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8A1009ED19D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4955, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8A1009F0DEB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4956, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A1009F4188 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4957, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A1009F4944 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4958, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009F4B5F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4959, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A1009F8362 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4960, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A1009F883B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4961, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A1009F8AFC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4962, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A100A02B34 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4963, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A100A02FD2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4964, 1, 1, 1, N'Thêm đơn hàng', N'Thêm đơn đặt hàng', CAST(0x0000A8A100A04DDD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4965, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A100A04E1B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4966, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A100A05C91 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4967, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8A100A05EFD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4968, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A100A064D8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4969, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8A100A06743 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4970, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8A100A0AFF0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4971, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A100A1EE6C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4972, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8A100A1F2ED AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4973, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A100A22D08 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4974, 1, 1, 1, N'Phiếu xuất khác', N'Thêm phiếu xuất khác', CAST(0x0000A8A100A249E9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4975, 1, 1, 1, N'Danh sách phiếu xuất khác', N'Truy cập', CAST(0x0000A8A100A249F5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4976, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A100A253A4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4977, 1, 1, 1, N'Danh sách kiểm kho', N'Truy cập', CAST(0x0000A8A100A257DC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4978, 1, 1, 1, N'Danh sách kiểm kho', N'Truy cập', CAST(0x0000A8A100A2C3C9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4979, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A100A3B776 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4980, 1, 1, 1, N'Danh sách kiểm kho', N'Truy cập', CAST(0x0000A8A100A3BC87 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4981, 1, 1, 1, N'Danh sách kiểm kho', N'Truy cập', CAST(0x0000A8A100A3DF61 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4982, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A100A3E7FC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4983, 1, 1, 1, N'Danh sách kiểm kho', N'Truy cập', CAST(0x0000A8A100A4052C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4984, 1, 1, 1, N'Tồn kho', N'Truy cập hàng hóa tồn kho', CAST(0x0000A8A100A40AC1 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4985, 1, 1, 1, N'Bảng kê bán hàng', N'Xem bảng kê bán hàng', CAST(0x0000A8A100A43C8E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4986, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A8A100A44726 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4987, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A8A100A468C2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4988, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A100A5533C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4989, 1, 1, 1, N'Danh sách phiếu nhập hàng', N'Truy cập', CAST(0x0000A8A100A56430 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4990, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A100A56AF8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4991, 1, 2, 7, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8A100A8060A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4992, 1, 2, 7, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8A100A8314F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4993, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A800EE529F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4994, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A800EE9A79 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4995, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A800F1210C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4996, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A800F7422A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4997, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A800F884EE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4998, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A800F89706 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (4999, 1, 1, 8, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A800F899D4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5000, 1, 1, 8, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A800F8E20B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5001, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A800FD3A25 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5002, 1, 1, 1, N'Chi nhánh', N'Cập nhật chi nhánh: 1', CAST(0x0000A8A800FD4D22 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5003, 1, 1, 1, N'Chi nhánh', N'Thêm chi nhánh: Chi Nhánh 2', CAST(0x0000A8A800FD5CAC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5004, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A800FD5F3F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5005, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A80100571F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5006, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A801017A38 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5007, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A801018713 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5008, 1, 1, 8, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A801018FCE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5009, 1, 1, 8, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A80101D300 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5010, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A80101E110 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5011, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A80101F577 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5012, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A8010270F0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5013, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A80102CBFB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5014, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A80102DBAB AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5015, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A80103C668 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5016, 1, 1, 1, N'Chi nhánh', N'Thêm chi nhánh: Chi Nhánh 3', CAST(0x0000A8A80103E698 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5017, 1, 1, 1, N'Chi nhánh', N'Cập nhật chi nhánh: 2', CAST(0x0000A8A80103EF9E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5018, 1, 1, 1, N'Quản lý người dùng', N'Thêm người dùng: quantri2', CAST(0x0000A8A8010417D4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5019, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A801048D98 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5020, 1, 1, 1, N'Chi nhánh', N'Cập nhật chi nhánh: 3', CAST(0x0000A8A80104E228 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5021, 1, 1, 1, N'Chi nhánh', N'Cập nhật chi nhánh: 3', CAST(0x0000A8A80104E685 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5022, 1, 1, 1, N'Quản lý người dùng', N'Cập nhật người dùng: 7', CAST(0x0000A8A80104FAD7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5023, 1, 1, 1, N'Quản lý người dùng', N'Cập nhật người dùng: 8', CAST(0x0000A8A801050058 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5024, 1, 1, 1, N'Quản lý người dùng', N'Thêm người dùng: Thungan2', CAST(0x0000A8A801050D0C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5025, 1, 1, 1, N'Quản lý người dùng', N'Thêm người dùng: quantri3', CAST(0x0000A8A801051AE4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5026, 1, 1, 1, N'Quản lý người dùng', N'Thêm người dùng: thungan3', CAST(0x0000A8A8010529B1 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5027, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A80108712B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5037, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A80109D4EE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5038, 1, 1, 1, N'Quản lý khu vực', N'Thêm khu vực: Khu A', CAST(0x0000A8A80109E34B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5039, 1, 1, 1, N'Quản lý khu vực', N'Thêm khu vực: Khu A', CAST(0x0000A8A80109EE0C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5040, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A8010A3FF7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5041, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A8010BBB00 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5042, 1, 1, 1, N'Quản lý khu vực', N'Thêm khu vực: Khu A', CAST(0x0000A8A8010BCE45 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5043, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A8010BD286 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5052, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A8010CEAF2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5053, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A8010CF713 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5054, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A8010FA015 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5055, 1, 1, 1, N'Quản lý khu vực', N'Cập nhật khu vực: 37', CAST(0x0000A8A801114603 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5056, 1, 1, 1, N'Quản lý khu vực', N'Cập nhật khu vực: 38', CAST(0x0000A8A801114A8E AS DateTime))
GO
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5057, 1, 1, 1, N'Quản lý khu vực', N'Cập nhật khu vực: 39', CAST(0x0000A8A801114E09 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5058, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A80111EE67 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5153, 1, 1, 8, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8A900E51D86 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5154, 1, 1, 8, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8A900E52CCD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5159, 1, 2, 7, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8A900F156DE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5160, 1, 2, 7, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8A900F1671C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5162, 1, 2, 7, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8A900F2933A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5372, 1, 2, 7, N'Đăng Nhập', N'Đăng Nhập Bán Hàng', CAST(0x0000A8AA00ADE076 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5373, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8AA00B73F8C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5374, 1, 1, 1, N'Chi nhánh', N'Thêm chi nhánh: 12312', CAST(0x0000A8AA00B75F4D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5375, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8AA00B7E6A1 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5376, 1, 1, 1, N'Chi nhánh', N'Thêm chi nhánh: 12312', CAST(0x0000A8AA00B8030E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5377, 1, 1, 8, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8AA00C37665 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5378, 1, 1, 8, N'Đơn vị tính', N'Thêm đơn vị tính: CÁI', CAST(0x0000A8AA00C38694 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5379, 1, 1, 8, N'Đơn vị tính', N'Thêm đơn vị tính: LY', CAST(0x0000A8AA00C38BB2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5380, 1, 1, 8, N'Đơn vị tính', N'Thêm đơn vị tính: CHÉN', CAST(0x0000A8AA00C39099 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5381, 1, 1, 8, N'Đơn vị tính', N'Thêm đơn vị tính: DĨA', CAST(0x0000A8AA00C39561 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5382, 1, 1, 8, N'Đơn vị tính', N'Thêm đơn vị tính: TÔ', CAST(0x0000A8AA00C39A58 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5383, 1, 1, 8, N'Đơn vị tính', N'Thêm đơn vị tính: LON', CAST(0x0000A8AA00C39F44 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5384, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 1', CAST(0x0000A8AA00C3CEF3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5385, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 2', CAST(0x0000A8AA00C3CEFD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5386, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 3', CAST(0x0000A8AA00C3CF06 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5387, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 4', CAST(0x0000A8AA00C3CF10 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5388, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 5', CAST(0x0000A8AA00C3CF1A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5389, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 6', CAST(0x0000A8AA00C3CF23 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5390, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 7', CAST(0x0000A8AA00C3CF2C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5391, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 8', CAST(0x0000A8AA00C3CF36 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5392, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 9', CAST(0x0000A8AA00C3CF40 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5393, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 10', CAST(0x0000A8AA00C3CF4A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5394, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 11', CAST(0x0000A8AA00C3CF54 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5395, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 12', CAST(0x0000A8AA00C3CF5D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5396, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 13', CAST(0x0000A8AA00C3CF67 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5397, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 14', CAST(0x0000A8AA00C3CF70 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5398, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 15', CAST(0x0000A8AA00C3CF79 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5399, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 16', CAST(0x0000A8AA00C3CF82 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5400, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 17', CAST(0x0000A8AA00C3CF8C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5401, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 18', CAST(0x0000A8AA00C3CF97 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5402, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 19', CAST(0x0000A8AA00C3CFA0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5403, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 20', CAST(0x0000A8AA00C3CFA9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5404, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 21', CAST(0x0000A8AA00C3CFB2 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5405, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 22', CAST(0x0000A8AA00C3CFBC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5406, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 23', CAST(0x0000A8AA00C3CFC5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5407, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 24', CAST(0x0000A8AA00C3CFCE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5408, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 25', CAST(0x0000A8AA00C3CFD7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5409, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 26', CAST(0x0000A8AA00C3CFE1 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5410, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 27', CAST(0x0000A8AA00C3CFEA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5411, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 28', CAST(0x0000A8AA00C3CFF4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5412, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 29', CAST(0x0000A8AA00C3CFFD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5413, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 30', CAST(0x0000A8AA00C3D007 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5414, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 31', CAST(0x0000A8AA00C3D010 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5415, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 32', CAST(0x0000A8AA00C3D01A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5416, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 33', CAST(0x0000A8AA00C3D023 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5417, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 34', CAST(0x0000A8AA00C3D02C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5418, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 35', CAST(0x0000A8AA00C3D036 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5419, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 36', CAST(0x0000A8AA00C3D040 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5420, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 37', CAST(0x0000A8AA00C3D049 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5421, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 38', CAST(0x0000A8AA00C3D054 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5422, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 39', CAST(0x0000A8AA00C3D05D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5423, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 40', CAST(0x0000A8AA00C3D066 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5424, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 41', CAST(0x0000A8AA00C3D070 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5425, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 42', CAST(0x0000A8AA00C3D079 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5426, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 43', CAST(0x0000A8AA00C3D083 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5427, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 44', CAST(0x0000A8AA00C3D08C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5428, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 45', CAST(0x0000A8AA00C3D095 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5429, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 46', CAST(0x0000A8AA00C3D09E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5430, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 47', CAST(0x0000A8AA00C3D0A8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5431, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 48', CAST(0x0000A8AA00C3D0B1 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5432, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 49', CAST(0x0000A8AA00C3D0BD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5433, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 50', CAST(0x0000A8AA00C3D0C8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5434, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 51', CAST(0x0000A8AA00C3D0D3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5435, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 52', CAST(0x0000A8AA00C3D0DD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5436, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 53', CAST(0x0000A8AA00C3D0E9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5437, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 54', CAST(0x0000A8AA00C3D0F3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5438, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 55', CAST(0x0000A8AA00C3D0FE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5439, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 56', CAST(0x0000A8AA00C3D107 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5440, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 57', CAST(0x0000A8AA00C3D110 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5441, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 58', CAST(0x0000A8AA00C3D11A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5442, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 59', CAST(0x0000A8AA00C3D123 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5443, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 60', CAST(0x0000A8AA00C3D12C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5444, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 61', CAST(0x0000A8AA00C3D136 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5445, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 62', CAST(0x0000A8AA00C3D13F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5446, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 63', CAST(0x0000A8AA00C3D149 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5447, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 64', CAST(0x0000A8AA00C3D152 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5448, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 65', CAST(0x0000A8AA00C3D15C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5449, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 66', CAST(0x0000A8AA00C3D165 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5450, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 67', CAST(0x0000A8AA00C3D16E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5451, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 68', CAST(0x0000A8AA00C3D178 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5452, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 69', CAST(0x0000A8AA00C3D184 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5453, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 70', CAST(0x0000A8AA00C3D191 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5454, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 71', CAST(0x0000A8AA00C3D19B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5455, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 72', CAST(0x0000A8AA00C3D1A4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5456, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 73', CAST(0x0000A8AA00C3D1AD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5457, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 74', CAST(0x0000A8AA00C3D1B7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5458, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 75', CAST(0x0000A8AA00C3D1C0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5459, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 76', CAST(0x0000A8AA00C3D1CA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5460, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 77', CAST(0x0000A8AA00C3D1D3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5461, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 78', CAST(0x0000A8AA00C3D1DD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5462, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 79', CAST(0x0000A8AA00C3D1E9 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5463, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 80', CAST(0x0000A8AA00C3D1F4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5464, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 81', CAST(0x0000A8AA00C3D1FF AS DateTime))
GO
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5465, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 82', CAST(0x0000A8AA00C3D209 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5466, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 83', CAST(0x0000A8AA00C3D214 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5467, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 84', CAST(0x0000A8AA00C3D21D AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5468, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 85', CAST(0x0000A8AA00C3D227 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5469, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 86', CAST(0x0000A8AA00C3D230 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5470, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 87', CAST(0x0000A8AA00C3D239 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5471, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 88', CAST(0x0000A8AA00C3D246 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5472, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 89', CAST(0x0000A8AA00C3D24F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5473, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 90', CAST(0x0000A8AA00C3D259 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5474, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 91', CAST(0x0000A8AA00C3D263 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5475, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 92', CAST(0x0000A8AA00C3D26C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5476, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 93', CAST(0x0000A8AA00C3D275 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5477, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 94', CAST(0x0000A8AA00C3D27E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5478, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 95', CAST(0x0000A8AA00C3D288 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5479, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 96', CAST(0x0000A8AA00C3D291 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5480, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 97', CAST(0x0000A8AA00C3D29A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5481, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 98', CAST(0x0000A8AA00C3D2A4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5482, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 99', CAST(0x0000A8AA00C3D2AD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5483, 1, 1, 8, N'Quản lý bàn', N'Thêm bàn: A - 100', CAST(0x0000A8AA00C3D2B8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5484, 1, 1, 8, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: Nước giải khát', CAST(0x0000A8AA00C3F0F4 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5485, 1, 1, 8, N'Quản lý nhóm hàng hóa', N'Thêm nhóm hàng hóa: Điểm tâm', CAST(0x0000A8AA00C3F8A0 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5486, 1, 1, 8, N'Quản lý hàng hóa', N'Thêm hàng hóa: 7 up', CAST(0x0000A8AA00C40CF5 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5487, 1, 1, 8, N'Quản lý hàng hóa', N'Thêm hàng hóa: O độ', CAST(0x0000A8AA00C420AA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5488, 1, 1, 8, N'Quản lý hàng hóa', N'Thêm hàng hóa: Cơm tấm', CAST(0x0000A8AA00C431A7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5489, 1, 1, 8, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8AA00C437CE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5490, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8AA00C43D35 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5491, 1, 1, 1, N'Chi nhánh', N'Thêm chi nhánh: Luân', CAST(0x0000A8AA00C4969A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5492, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8AA00C49E95 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5497, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8AA00C5C3BC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5498, 1, 1, 1, N'Chi nhánh', N'Xóa chi nhánh ID: 4', CAST(0x0000A8AA00C5D143 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5499, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8AA00D579A7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5500, 1, 1, 1, N'Chi nhánh', N'Thêm chi nhánh: Huỳnh Vũ Luân', CAST(0x0000A8AA00D71F6A AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5501, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8AA00D726D3 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5505, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8AA00DAF1B7 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5506, 1, 1, 1, N'Chi nhánh', N'Xóa chi nhánh ID: 5', CAST(0x0000A8AA00DAFDDF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5507, 1, 1, 1, N'Chi nhánh', N'Thêm chi nhánh: qqqq', CAST(0x0000A8AA00DB19AE AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5508, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8AA00DB211B AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5511, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8AA00DC28EF AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5512, 1, 1, 1, N'Chi nhánh', N'Xóa chi nhánh ID: 6', CAST(0x0000A8AA00E161DD AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5513, 1, 1, 1, N'Chi nhánh', N'Xóa chi nhánh ID: 3', CAST(0x0000A8AA00E1635E AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5514, 1, 1, 1, N'Chi nhánh', N'Xóa chi nhánh ID: 2', CAST(0x0000A8AA00E16434 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5515, 1, 1, 1, N'Chi nhánh', N'Thêm chi nhánh: Minh Anh', CAST(0x0000A8AA00E22ED6 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5516, 1, 1, 1, N'Chi nhánh', N'Xóa chi nhánh ID: 7', CAST(0x0000A8AA00E256BA AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5517, 1, 1, 1, N'Chi nhánh', N'Thêm chi nhánh: a', CAST(0x0000A8AA00E26531 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5518, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8AA00E276FC AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5521, 1, 1, 1, N'Đăng nhập', N'Đăng nhập hệ thống', CAST(0x0000A8AA00E2961C AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5522, 1, 1, 1, N'Chi nhánh', N'Xóa chi nhánh ID: 8', CAST(0x0000A8AA00E29F34 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5523, 1, 1, 1, N'Bảng kê bán hàng', N'Xem bảng kê bán hàng', CAST(0x0000A8AA00E4A56F AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5524, 1, 1, 1, N'Báo cáo bán hàng', N'Xem báo cáo bán hàng', CAST(0x0000A8AA00E4B0F8 AS DateTime))
INSERT [dbo].[CF_LichSuTruyCap] ([ID], [IDChiNhanh], [IDNhom], [IDNguoiDung], [Menu], [HanhDong], [ThoiGian]) VALUES (5525, 1, 1, 1, N'Đăng xuất', N'Đăng xuất khỏi hệ thống', CAST(0x0000A8AA00E4B5E7 AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_LichSuTruyCap] OFF
SET IDENTITY_INSERT [dbo].[CF_NguoiDung] ON 

INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (1, N'0000001', N'Hệ Thống', N'ADMIN', N'01674799994', N'4e159eca79339d7142cfb140ab21454425874a85', N'luanhv@gpm.vn', 1, CAST(0x0000A7FA00B10340 AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (7, N'0000007', N'Thu Ngân', N'THUNGAN1', N'1', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'', 2, CAST(0x0000A8A80104FAD3 AS DateTime), 0, 1)
INSERT [dbo].[CF_NguoiDung] ([ID], [MaNhanVien], [TenNguoiDung], [TenDangNhap], [SDT], [MatKhau], [Email], [IDNhomNguoiDung], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (8, N'0000003', N'Quản Trị', N'QUANTRI1', N'1', N'cf7579954ba3792f6a4044c32f28fb62b10863f', N'', 1, CAST(0x0000A8A801050054 AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[CF_NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[CF_NguyenLieu] ON 

INSERT [dbo].[CF_NguyenLieu] ([ID], [MaNguyenLieu], [TenNguyenLieu], [NhaCungCap], [GhiChu], [NgayCapNhat], [DaXoa], [IDDonViTinh], [GiaMua], [GiaBan], [TrangThai]) VALUES (232, N'0000001', N'String dâu', N'', N'', CAST(0x0000A8A1009B87CF AS DateTime), 0, 5, 0, 10000, 1)
INSERT [dbo].[CF_NguyenLieu] ([ID], [MaNguyenLieu], [TenNguyenLieu], [NhaCungCap], [GhiChu], [NgayCapNhat], [DaXoa], [IDDonViTinh], [GiaMua], [GiaBan], [TrangThai]) VALUES (233, N'0000002', N'7Up', N'', N'', CAST(0x0000A8A1009B9401 AS DateTime), 0, 5, 0, 10000, 1)
SET IDENTITY_INSERT [dbo].[CF_NguyenLieu] OFF
SET IDENTITY_INSERT [dbo].[CF_NhaCungCap] ON 

INSERT [dbo].[CF_NhaCungCap] ([ID], [TenNhaCungCap], [DienThoai], [Fax], [Email], [DiaChi], [NguoiLienHe], [MaSoThue], [LinhVucKinhDoanh], [NgayCapNhat], [GhiChu], [DaXoa], [CongNo]) VALUES (11, N'Khách lẻ', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000A83300000000 AS DateTime), N'', 0, 0)
INSERT [dbo].[CF_NhaCungCap] ([ID], [TenNhaCungCap], [DienThoai], [Fax], [Email], [DiaChi], [NguoiLienHe], [MaSoThue], [LinhVucKinhDoanh], [NgayCapNhat], [GhiChu], [DaXoa], [CongNo]) VALUES (12, N'Khách sỉ', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000A8A100000000 AS DateTime), N'', 0, 0)
INSERT [dbo].[CF_NhaCungCap] ([ID], [TenNhaCungCap], [DienThoai], [Fax], [Email], [DiaChi], [NguoiLienHe], [MaSoThue], [LinhVucKinhDoanh], [NgayCapNhat], [GhiChu], [DaXoa], [CongNo]) VALUES (13, N'Anh hùng', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000A8A100000000 AS DateTime), N'', 0, 1250000)
SET IDENTITY_INSERT [dbo].[CF_NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[CF_NhomHangHoa] ON 

INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (78, N'', N'Nước giải khát', N'', CAST(0x0000A8AA00C3F0EC AS DateTime), 0, 1)
INSERT [dbo].[CF_NhomHangHoa] ([ID], [MaNhom], [TenNhom], [GhiChu], [NgayCapNhat], [DaXoa], [IDChiNhanh]) VALUES (79, N'', N'Điểm tâm', N'', CAST(0x0000A8AA00C3F897 AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[CF_NhomHangHoa] OFF
SET IDENTITY_INSERT [dbo].[CF_NhomNguoiDung] ON 

INSERT [dbo].[CF_NhomNguoiDung] ([ID], [MaNhom], [TenNhom], [NgayCapNhat]) VALUES (1, N'0001', N'Nhóm Quản Trị', CAST(0x0000A7D000BBE141 AS DateTime))
INSERT [dbo].[CF_NhomNguoiDung] ([ID], [MaNhom], [TenNhom], [NgayCapNhat]) VALUES (2, N'0002', N'Nhóm Thu Ngân', CAST(0x0000A7D000BBEA6E AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_NhomNguoiDung] OFF
SET IDENTITY_INSERT [dbo].[CF_PhieuXuatKhac] ON 

INSERT [dbo].[CF_PhieuXuatKhac] ([ID], [IDNhanVien], [NgayLapPhieu], [IDLyDoXuat], [IDChiNhanh], [GhiChu], [TongTien], [NgayCapNhat]) VALUES (2, 1, CAST(0x0000A8A100000000 AS DateTime), 2, 1, N's', 0, CAST(0x0000A8A100A249E6 AS DateTime))
SET IDENTITY_INSERT [dbo].[CF_PhieuXuatKhac] OFF
SET IDENTITY_INSERT [dbo].[CF_PhieuXuatKhac_ChiTiet] ON 

INSERT [dbo].[CF_PhieuXuatKhac_ChiTiet] ([ID], [IDPhieuXuatKhac], [IDNguyenLieu], [TonKho], [IDDonViTinh], [SoLuongXuat], [MaNguyenLieu], [DonGia], [ThanhTien]) VALUES (2, 2, 232, 30, 5, 2, N'0000001', 0, 0)
INSERT [dbo].[CF_PhieuXuatKhac_ChiTiet] ([ID], [IDPhieuXuatKhac], [IDNguyenLieu], [TonKho], [IDDonViTinh], [SoLuongXuat], [MaNguyenLieu], [DonGia], [ThanhTien]) VALUES (3, 2, 233, 15, 5, 1, N'0000002', 0, 0)
SET IDENTITY_INSERT [dbo].[CF_PhieuXuatKhac_ChiTiet] OFF
SET IDENTITY_INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ON 

INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (1, N'SỬ DỤNG NỘI BỘ')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (2, N'HÀNG HẾT HẠN SỬ DỤNG')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (3, N'HÀNG HƯ')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (4, N'MẤT TRỘM')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (5, N'QUÀ TẶNG NHÂN VIÊN')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (6, N'QUÀ TẶNG KHÁCH HÀNG 2%')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (7, N'CHƯƠNG TRÌNH KHUYẾN MÃI 3 THÁNG')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (8, N'ĐIỀU CHỈNH TỒN KHO')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (9, N'HÀNG KHUYẾN MÃI CHUYỂN SANG HÀNG BÁN')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (10, N'HÀNG BÁN CHUYỂN SANG HÀNG KHUYẾN MÃI')
INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] ([ID], [TenTrangThai]) VALUES (11, N'KHÁC')
SET IDENTITY_INSERT [dbo].[CF_TrangThaiPhieuXuatKhac] OFF
SET IDENTITY_INSERT [dbo].[GPM_KhachHang] ON 

INSERT [dbo].[GPM_KhachHang] ([ID], [TenKhachHang]) VALUES (1, N'Khách lẻ')
SET IDENTITY_INSERT [dbo].[GPM_KhachHang] OFF
SET IDENTITY_INSERT [dbo].[GPM_LichSuKho] ON 

INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (1, 0, 52, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A8260107166A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (2, 0, 53, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A82601071A89 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (3, 0, 53, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A82601081BDF AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (4, 0, 52, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A82601082141 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (5, 0, 54, 1, 0, -1, N'Bán hàng lẻ', CAST(0x0000A828008E2EFB AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (6, 0, 54, 1, -1, -2, N'Bán hàng lẻ', CAST(0x0000A82800A10FC2 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (7, 0, 53, 1, -1, -2, N'Bán hàng lẻ', CAST(0x0000A82800A10FCB AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (8, 0, 52, 1, -1, -2, N'Bán hàng lẻ', CAST(0x0000A82800A1FD10 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (9, 0, 54, 1, -2, -3, N'Bán hàng lẻ', CAST(0x0000A82800A1FD19 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (10, 0, 52, 1, -2, -3, N'Bán hàng lẻ', CAST(0x0000A82800A47290 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (11, 0, 54, 1, -3, -4, N'Bán hàng lẻ', CAST(0x0000A82800A472AC AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (12, 0, 52, 1, -3, -4, N'Bán hàng lẻ', CAST(0x0000A82800A752A5 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (13, 0, 54, 1, -4, -5, N'Bán hàng lẻ', CAST(0x0000A82800A752B3 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (14, 0, 53, 1, -2, -3, N'Bán hàng lẻ', CAST(0x0000A82800A752BC AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (15, 0, 52, 1, -4, -5, N'Bán hàng lẻ', CAST(0x0000A82800A78A5D AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (16, 0, 53, 1, -3, -4, N'Bán hàng lẻ', CAST(0x0000A82800A78A66 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (17, 0, 54, 1, -5, -6, N'Bán hàng lẻ', CAST(0x0000A82800A78A74 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (18, 0, 52, 1, -5, -6, N'Bán hàng lẻ', CAST(0x0000A82800A82613 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (19, 0, 53, 1, -4, -5, N'Bán hàng lẻ', CAST(0x0000A82800A82622 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (20, 0, 54, 1, -6, -7, N'Bán hàng lẻ', CAST(0x0000A82800A8262F AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (21, 0, 52, 1, -6, -7, N'Bán hàng lẻ', CAST(0x0000A82800A87367 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (22, 0, 53, 1, -5, -6, N'Bán hàng lẻ', CAST(0x0000A82800A87375 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (23, 0, 53, 1, -6, -7, N'Bán hàng lẻ', CAST(0x0000A82800A88D21 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (24, 0, 53, 1, -7, -8, N'Bán hàng lẻ', CAST(0x0000A82800AA221F AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (25, 0, 54, 1, -7, -8, N'Bán hàng lẻ', CAST(0x0000A82800AA2228 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (26, 0, 52, 1, -7, -8, N'Bán hàng lẻ', CAST(0x0000A82800AA2236 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (27, 0, 52, 1, -8, -9, N'Bán hàng lẻ', CAST(0x0000A82800AA87BA AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (28, 0, 53, 1, -8, -9, N'Bán hàng lẻ', CAST(0x0000A82800AA87E8 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (29, 0, 52, 1, -9, -10, N'Bán hàng lẻ', CAST(0x0000A82800AE577A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (30, 0, 53, 1, -9, -10, N'Bán hàng lẻ', CAST(0x0000A82800AE5788 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (31, 0, 52, 1, -10, -11, N'Bán hàng lẻ', CAST(0x0000A82800B7D134 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (32, 0, 52, 1, -11, -12, N'Bán hàng lẻ', CAST(0x0000A82800B81ACB AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (33, 0, 52, 1, -12, -13, N'Bán hàng lẻ', CAST(0x0000A82800B92387 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (34, 0, 54, 1, -8, -9, N'Bán hàng lẻ', CAST(0x0000A82800B923A3 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (35, 0, 52, 1, -13, -14, N'Bán hàng lẻ', CAST(0x0000A82800B98455 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (36, 0, 53, 1, -10, -11, N'Bán hàng lẻ', CAST(0x0000A82800B98464 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (37, 0, 53, 1, -11, -12, N'Bán hàng lẻ', CAST(0x0000A82A00909B66 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (38, 0, 54, 1, -9, -10, N'Bán hàng lẻ', CAST(0x0000A82A00909B6A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (39, 0, 53, 1, -12, -13, N'Bán hàng lẻ', CAST(0x0000A82A00917C37 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (40, 0, 54, 1, -10, -11, N'Bán hàng lẻ', CAST(0x0000A82A00917C40 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (41, 0, 52, 1, -14, -15, N'Bán hàng lẻ', CAST(0x0000A82A0092260B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (42, 0, 53, 1, -13, -14, N'Bán hàng lẻ', CAST(0x0000A82A00922615 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (43, 0, 54, 1, -11, -12, N'Bán hàng lẻ', CAST(0x0000A82A0092261E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (44, 0, 52, 1, -15, -16, N'Bán hàng lẻ', CAST(0x0000A82A00929C0E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (45, 0, 53, 1, -14, -15, N'Bán hàng lẻ', CAST(0x0000A82A00929C18 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (46, 0, 54, 1, -12, -13, N'Bán hàng lẻ', CAST(0x0000A82A00929C21 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (47, 0, 52, 1, -16, -17, N'Bán hàng lẻ', CAST(0x0000A82A009356FD AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (48, 0, 53, 1, -15, -16, N'Bán hàng lẻ', CAST(0x0000A82A00935706 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (49, 0, 54, 1, -13, -14, N'Bán hàng lẻ', CAST(0x0000A82A0093570B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (50, 0, 52, 1, -17, -18, N'Bán hàng lẻ', CAST(0x0000A82A0098F37C AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (51, 0, 53, 1, -16, -17, N'Bán hàng lẻ', CAST(0x0000A82A0098F38B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (52, 0, 54, 1, -14, -15, N'Bán hàng lẻ', CAST(0x0000A82A0098F394 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (53, 0, 53, 1, -17, -18, N'Bán hàng lẻ', CAST(0x0000A82A00A0B24C AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (54, 0, 53, 1, -18, -19, N'Bán hàng lẻ', CAST(0x0000A82A00A2E283 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (55, 0, 54, 1, -15, -16, N'Bán hàng lẻ', CAST(0x0000A82A00A2E28C AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (56, 0, 52, 1, -18, -19, N'Bán hàng lẻ', CAST(0x0000A82B0099BF1A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (57, 0, 53, 1, -19, -25, N'Bán hàng lẻ', CAST(0x0000A82B0099BF28 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (58, 0, 54, 1, -16, -17, N'Bán hàng lẻ', CAST(0x0000A82B0099BF36 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (59, 0, 52, 1, -19, -20, N'Bán hàng lẻ', CAST(0x0000A82B009A211E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (60, 0, 53, 1, -25, -28, N'Bán hàng lẻ', CAST(0x0000A82B009A2127 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (61, 0, 52, 1, -20, -21, N'Bán hàng lẻ', CAST(0x0000A82B009A79D5 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (62, 0, 53, 1, -28, -29, N'Bán hàng lẻ', CAST(0x0000A82B009A79E3 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (63, 0, 54, 1, -17, -18, N'Bán hàng lẻ', CAST(0x0000A82B009A79F5 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (64, 0, 52, 1, -21, -22, N'Bán hàng lẻ', CAST(0x0000A82B009B1A28 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (65, 0, 53, 1, -29, -30, N'Bán hàng lẻ', CAST(0x0000A82B009B1A32 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (66, 0, 54, 1, -18, -19, N'Bán hàng lẻ', CAST(0x0000A82B009B1A40 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (67, 0, 52, 1, -22, -23, N'Bán hàng lẻ', CAST(0x0000A82B009B7AB1 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (68, 0, 53, 1, -30, -31, N'Bán hàng lẻ', CAST(0x0000A82B009B7ABA AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (69, 0, 52, 1, -23, -24, N'Bán hàng lẻ', CAST(0x0000A82B009B927A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (70, 0, 52, 1, -24, -25, N'Bán hàng lẻ', CAST(0x0000A82B009C1F81 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (71, 0, 54, 1, -19, -20, N'Bán hàng lẻ', CAST(0x0000A82B009C1F8B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (72, 0, 52, 1, -25, -26, N'Bán hàng lẻ', CAST(0x0000A82B009C418B AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (73, 0, 53, 1, -31, -32, N'Bán hàng lẻ', CAST(0x0000A82B009C4194 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (74, 1, 54, 1, -15, -155, N'Thêm đơn hàng', CAST(0x0000A82C0093C68E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (75, 1, 14, 1, 10, 1010, N'Thêm đơn hàng', CAST(0x0000A82C0093C6AA AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (76, 1, 13, 1, 6, 12, N'Thêm đơn hàng', CAST(0x0000A82C0097722E AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (77, 1, 54, 1, -9, -3, N'Thêm đơn hàng', CAST(0x0000A82C0097724A AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (78, 1, 13, 1, 6, 0, N'Phiếu xuất khác', CAST(0x0000A82C009A0731 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (79, 1, 17, 1, 0, -1, N'Phiếu xuất khác', CAST(0x0000A82C009A0748 AS DateTime), 0)
INSERT [dbo].[GPM_LichSuKho] ([ID], [IDKho], [IDHangHoa], [IDNhanVien], [SoLuong], [SoLuongMoi], [NoiDung], [NgayCapNhat], [TrangThai]) VALUES (80, 1, 58, 4, 240, 480, N'Thêm đơn hàng', CAST(0x0000A83300FE95A7 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[GPM_LichSuKho] OFF
SET IDENTITY_INSERT [dbo].[Setting] ON 

INSERT [dbo].[Setting] ([ID], [TieuDe], [CongTy], [DiaChi], [SDT], [TinhGio], [TestDuLieu], [ReportBill], [MayIn], [CauHinhServer], [GiaoDienApDung]) VALUES (1, N'', N'Cửa Hàng 1', N'198B10 Hàm Nghi, Long Xuyên - AG', N'02966.275.595', 0, N'd9fd598e4ea9bc5deef68ae5fe1299871bebb033', 80, N'XP-80C', 1, 1)
SET IDENTITY_INSERT [dbo].[Setting] OFF
ALTER TABLE [dbo].[CF_Ban] ADD  CONSTRAINT [DF_CF_Ban_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_Ban] ADD  CONSTRAINT [DF_CF_Ban_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_BangGia] ADD  CONSTRAINT [DF_CF_BangGia_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_ChiNhanh] ADD  CONSTRAINT [DF_CF_ChiNhanh_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_ChiNhanh] ADD  CONSTRAINT [DF_CF_ChiNhanh_ReportBill]  DEFAULT ((80)) FOR [ReportBill]
GO
ALTER TABLE [dbo].[CF_ChiNhanh] ADD  CONSTRAINT [DF_CF_ChiNhanh_GiaoDienApDung]  DEFAULT ((1)) FOR [GiaoDienApDung]
GO
ALTER TABLE [dbo].[CF_ChiNhanh] ADD  CONSTRAINT [DF_CF_ChiNhanh_TaoDaTaMau]  DEFAULT ((0)) FOR [DuLieuMau]
GO
ALTER TABLE [dbo].[CF_ChiTietBangGia] ADD  CONSTRAINT [DF_CF_ChiTietBangGia_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_ChiTietGio] ADD  CONSTRAINT [DF_CF_ChiTietGio_DonGia]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[CF_ChiTietGio] ADD  CONSTRAINT [DF_CF_ChiTietGio_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[CF_ChiTietGio] ADD  CONSTRAINT [DF_CF_ChiTietGio_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_ChiTietGio] ADD  CONSTRAINT [DF_CF_ChiTietGio_ThanhToan]  DEFAULT ((0)) FOR [ThanhToan]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_DonGia]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_TrongLuong]  DEFAULT ((0)) FOR [TrongLuong]
GO
ALTER TABLE [dbo].[CF_ChiTietHoaDon_Temp] ADD  CONSTRAINT [DF_CF_ChiTietHoaDon_Temp_TrongLuong]  DEFAULT ((0)) FOR [TrongLuong]
GO
ALTER TABLE [dbo].[CF_DonViTinh] ADD  CONSTRAINT [DF_CF_DonViTinh_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_Gio] ADD  CONSTRAINT [DF_CF_Gio_TyLe]  DEFAULT ((0)) FOR [TyLe]
GO
ALTER TABLE [dbo].[CF_HangHoa] ADD  CONSTRAINT [DF_CF_HangHoa_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TongTien]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_GiamGia]  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_KhachCanTra]  DEFAULT ((0)) FOR [KhachCanTra]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_KhachThanhToan]  DEFAULT ((0)) FOR [KhachThanhToan]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TienThua]  DEFAULT ((0)) FOR [TienThua]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TienGio]  DEFAULT ((0)) FOR [TienGio]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TrangThaiKetCa]  DEFAULT ((0)) FOR [TrangThaiKetCa]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_LanIn]  DEFAULT ((0)) FOR [LanIn]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_HinhThucGiamGia]  DEFAULT ('$') FOR [HinhThucGiamGia]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TienGiamGia]  DEFAULT ((0)) FOR [TienGiamGia]
GO
ALTER TABLE [dbo].[CF_HoaDon] ADD  CONSTRAINT [DF_CF_HoaDon_TyLeGiamGia]  DEFAULT ((0)) FOR [TyLeGiamGia]
GO
ALTER TABLE [dbo].[CF_KetCa] ADD  CONSTRAINT [DF_CF_KetCa_TongTienSauCa]  DEFAULT ((0)) FOR [TongTienSauCa]
GO
ALTER TABLE [dbo].[CF_KetCa] ADD  CONSTRAINT [DF_CF_KetCa_TienGio]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[CF_KetCa] ADD  CONSTRAINT [DF_CF_KetCa_TienNuoc]  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[CF_KeyCode] ADD  CONSTRAINT [DF_CF_KeyCode_ThoiGianSuDung]  DEFAULT ((0)) FOR [ThoiGianSuDung]
GO
ALTER TABLE [dbo].[CF_KeyKichHoat] ADD  CONSTRAINT [DF_CF_KeyKichHoat_SoLanKichHoat]  DEFAULT ((0)) FOR [SoLanKichHoat]
GO
ALTER TABLE [dbo].[CF_KhuVuc] ADD  CONSTRAINT [DF_CF_KhuVuc_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_KiemKho] ADD  CONSTRAINT [DF_CF_KiemKho_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_KiemKho_ChiTiet] ADD  CONSTRAINT [DF_CF_KiemKho_ChiTiet_ThucTe]  DEFAULT ((0)) FOR [ThucTe]
GO
ALTER TABLE [dbo].[CF_KiemKho_ChiTiet_Temp] ADD  CONSTRAINT [DF_CF_KiemKho_ChiTiet_Temp_ThucTe]  DEFAULT ((0)) FOR [ThucTe]
GO
ALTER TABLE [dbo].[CF_NguoiDung] ADD  CONSTRAINT [DF_CF_NguoiDung_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_NguyenLieu] ADD  CONSTRAINT [DF_CF_NguyenLieu_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_NguyenLieu] ADD  CONSTRAINT [DF_CF_NguyenLieu_GiaMua]  DEFAULT ((0)) FOR [GiaMua]
GO
ALTER TABLE [dbo].[CF_NguyenLieu] ADD  CONSTRAINT [DF_CF_NguyenLieu_GiaBan]  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[CF_NguyenLieu] ADD  CONSTRAINT [DF_CF_NguyenLieu_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CF_NhaCungCap] ADD  CONSTRAINT [DF_CF_NhaCungCap_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_NhaCungCap] ADD  CONSTRAINT [DF_CF_NhaCungCap_CongNo]  DEFAULT ((0)) FOR [CongNo]
GO
ALTER TABLE [dbo].[CF_NhomHangHoa] ADD  CONSTRAINT [DF_CF_NhomHangHoa_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_PhieuXuatKhac] ADD  CONSTRAINT [DF_CF_PhieuXuatKhac_TongTien]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[CF_PhieuXuatKhac_ChiTiet] ADD  CONSTRAINT [DF_CF_PhieuXuatKhac_ChiTiet_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[CF_PhieuXuatKhac_ChiTiet_Temp] ADD  CONSTRAINT [DF_CF_PhieuXuatKhac_ChiTiet_Temp_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[CF_TongChi] ADD  CONSTRAINT [DF_CF_TongChi_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CF_TonKho] ADD  CONSTRAINT [DF_CF_TonKho_TrongLuong]  DEFAULT ((0)) FOR [TrongLuong]
GO
ALTER TABLE [dbo].[CF_TonKho] ADD  CONSTRAINT [DF_CF_TonKho_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[GPM_ChiTietBangGia] ADD  CONSTRAINT [DF_GPM_ChiTietBangGia_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[GPM_ChiTietHoaDon] ADD  CONSTRAINT [DF_GPM_ChiTietHoaDon_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[GPM_HoaDon] ADD  CONSTRAINT [DF_GPM_HoaDon_SoLanIn]  DEFAULT ((0)) FOR [SoLanIn]
GO
ALTER TABLE [dbo].[GPM_HoaDon] ADD  CONSTRAINT [DF_GPM_HoaDon_DaXoa]  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[GPM_HoaDon] ADD  CONSTRAINT [DF_GPM_HoaDon_TyLeGiam]  DEFAULT ((0)) FOR [TyLeGiam]
GO
ALTER TABLE [dbo].[GPM_LichSuKho] ADD  CONSTRAINT [DF_GPM_LichSuKho_IDKho]  DEFAULT ((0)) FOR [IDKho]
GO
ALTER TABLE [dbo].[GPM_LichSuKho] ADD  CONSTRAINT [DF_GPM_LichSuKho_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Setting] ADD  CONSTRAINT [DF_Setting_TinhGio]  DEFAULT ((0)) FOR [TinhGio]
GO
