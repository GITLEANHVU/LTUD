CREATE DATABASE QuanLyBanHang;
GO
USE QuanLyBanHang;

-- ####################################### --
CREATE TABLE SanPham(
	MaSP varchar(11) NOT NULL PRIMARY KEY,
	TenSP nvarchar(255) NOT NULL,
	DonViTinh varchar(10) NOT NULL,
	DonGia int NOT NULL,
	Hinh varchar(255) NOT NULL
);
GO
CREATE TABLE ChiTietHoaDon(
	MaHD varchar(11) NOT NULL PRIMARY KEY,
	MaSP varchar(11) NOT NULL CONSTRAINT PK_MaSP_ChiTietHoaDon FOREIGN KEY  REFERENCES SanPham(MaSP),
	SoLuong int
);

-- ####################################### --
CREATE TABLE NhanVien(
	MaNV varchar(11) NOT NULL PRIMARY KEY,
	Ho nvarchar(25) NOT NULL,
	Ten nvarchar(25) NOT NULL,
	Nu bit NOT NULL, -- gioiTinh
	NgayNV date NOT NULL, -- ngay nhan viec
	DiaChi nvarchar(255) NOT NULL,
	DienThoai varchar(11) NOT NULL,
	Hinh varchar(255) NOT NULL
);
GO
-- ####################################### --
CREATE TABLE ThanhPho(
	ThanhPho varchar(11) NOT NULL PRIMARY KEY,
	TenThanhPho nvarchar(255) NOT NULL
);
GO
CREATE TABLE KhachHang(
	MaKH varchar (11) NOT NULL PRIMARY KEY,
	TenCty nvarchar(255) NOT NULL, -- ten cong ty
	DiaChi nvarchar(255),
	ThanhPho varchar(11) CONSTRAINT PK_ThanhPho_KhacHang FOREIGN KEY REFERENCES ThanhPho(ThanhPho),
	DienThoai varchar(11)
);

-- ####################################### --
CREATE TABLE HoaDon(
	MaHD varchar(11) NOT NULL PRIMARY KEY,
	MaKH varchar(11) NOT NULL CONSTRAINT PK_MaKH_HoaDon FOREIGN KEY REFERENCES KhachHang(MaKH),
	MaNV varchar(11) NOT NULL CONSTRAINT PK_MaNV_HoaDon FOREIGN KEY REFERENCES NhanVien(MaNV),
	NgayLapHD date NOT NULL,
	NgayNhanHang date NOT NULL
);