USE QuanLyBanHang;
-- ##################### 1 SrotedProcdure SanPham ################## --
GO
CREATE PROC getAllSanPham
AS
BEGIN
	SELECT * FROM SanPham
END; GO
-- ^^^^^^ Them San Pham ^^^^^^^ --
CREATE PROC insertSanPham (@MaSP varchar(11), @TenSP nvarchar(255), @DonViTinh varchar(10), @DonGia int, @Hinh varchar(255))
AS
BEGIN
	INSERT INTO SanPham
	VALUES (@MaSP, @TenSP, @DonViTinh, @DonGia, @Hinh)
END; GO
-- ^^^^^^ Xoa San Pham Theo MaSP ^^^^^^^ --
CREATE PROC deleteSanPham (@MaSP varchar(11))
AS
BEGIN
	DELETE FROM SanPham
	WHERE @MaSP = SanPham.MaSP
END; GO
-- ^^^^^^ Cap nhat san pham duaa theo MaSP ^^^^^^^ --
CREATE PROC updateSanPham (@MaSP varchar(11), @TenSP nvarchar(255), @DonViTinh varchar(10), @DonGia int, @Hinh varchar(255))
AS
BEGIN
	UPDATE SanPham SET MaSP = @MaSP, TenSP = @TenSP, DonViTinh = @DonViTinh, DonGia = @DonGia, Hinh = @Hinh
	WHERE @MaSP = SanPham.MaSP
END; GO

-- ##################### 2 SrotedProcdure ChiTietHoaDon ################## --
CREATE PROC getAllChiTietHoaDon
AS
BEGIN
	SELECT * FROM ChiTietHoaDon
END; GO
-- ^^^^^^ Them ChiTietHoaDon ^^^^^^^ --
CREATE PROC insertChiTietHoaDon (@MaHD varchar(11), @MaSP varchar(11), @SoLuong int)
AS
BEGIN
	INSERT INTO ChiTietHoaDon
	VALUES (@MaHD, @MaSP, @SoLuong)
END; GO
-- ^^^^^^ Xoa ChiTietHoaDon Theo MaHD ^^^^^^^ --
CREATE PROC deleteChiTietHoaDon (@MaHD varchar(11))
AS
BEGIN
	DELETE FROM ChiTietHoaDon
	WHERE @MaHD = ChiTietHoaDon.MaHD
END; GO
-- ^^^^^^ Cap nhat ChiTietHoaDon dua theo MaHD ^^^^^^^ --
CREATE PROC updateChiTietHoaDon (@MaHD varchar(11), @MaSP varchar(11), @SoLuong int)
AS
BEGIN
	UPDATE ChiTietHoaDon SET MaHD = @MaHD, MaSP = @MaSP, SoLuong = @SoLuong
	WHERE @MaHD = ChiTietHoaDon.MaHD
END; GO

-- ##################### 3 SrotedProcdure NhanVien ################## --
CREATE PROC getAllNhanVien
AS
BEGIN
	SELECT * FROM NhanVien
END; GO
-- ^^^^^^ Them NhanVien ^^^^^^^ --
CREATE PROC insertNhanVien (@MaNV varchar(11), @Ho nvarchar(25), @Ten nvarchar(25), @Nu bit, @NgayNV date, @DiaChi nvarchar(255), @DienThoai varchar(11), @Hinh varchar(255))
AS
BEGIN
	INSERT INTO NhanVien
	VALUES (@MaNV, @Ho, @Ten, @Nu, @NgayNV, @DiaChi, @DienThoai, @Hinh)
END; GO
-- ^^^^^^ Xoa NhanVien Theo MaNV ^^^^^^^ --
CREATE PROC deleteNhanVien (@MaNV varchar(11))
AS
BEGIN
	DELETE FROM NhanVien
	WHERE @MaNV = NhanVien.MaNV
END; GO
-- ^^^^^^ Cap nhat NhanVien dua theo MaNV ^^^^^^^ --
CREATE PROC updateNhanVien (@MaNV varchar(11), @Ho nvarchar(25), @Ten nvarchar(25), @Nu bit, @NgayNV date, @DiaChi nvarchar(255), @DienThoai varchar(11), @Hinh varchar(255))
AS
BEGIN
	UPDATE NhanVien SET MaNV = @MaNV, Ho = @Ho, Ten = @Ten, Nu = @Nu, NgayNV = @NgayNV, DiaChi = @DiaChi, DienThoai = @DienThoai, Hinh = @Hinh
	WHERE @MaNV = NhanVien.MaNV
END; GO

-- ##################### 4 SrotedProcdure ThanhPho ################## --
CREATE PROC getAllThanhPho
AS
BEGIN
	SELECT * FROM ThanhPho
END; GO
-- ^^^^^^ Them ThanhPho ^^^^^^^ --
CREATE PROC insertThanhPho (@ThanhPho varchar(11), @TenThanhPho nvarchar(255))
AS
BEGIN
	INSERT INTO ThanhPho
	VALUES (@ThanhPho, @TenThanhPho)
END; GO
-- ^^^^^^ Xoa ThanhPho Theo ThanhPho ^^^^^^^ --
CREATE PROC deleteThanhPho (@ThanhPho varchar(11))
AS
BEGIN
	DELETE FROM ThanhPho
	WHERE @ThanhPho = ThanhPho.ThanhPho
END; GO
-- ^^^^^^ Cap nhat ThanhPho dua theo ThanhPho ^^^^^^^ --
CREATE PROC updateThanhPho (@ThanhPho varchar(11), @TenThanhPho nvarchar(255))
AS
BEGIN
	UPDATE ThanhPho SET ThanhPho = @ThanhPho, TenThanhpho = @TenThanhPho
	WHERE @ThanhPho = ThanhPho.ThanhPho
END; GO

-- ##################### 5 SrotedProcdure KhachHang ################## --
CREATE PROC getAllKhachHang
AS
BEGIN
	SELECT * FROM KhachHang
END; GO
-- ^^^^^^ Them KhachHang ^^^^^^^ --
CREATE PROC insertKhachHang (@MaKH varchar(11), @TenCty nvarchar(255), @DiaChi nvarchar(255), @ThanhPho varchar(11) , @DienThoai varchar(11))
AS
BEGIN
	INSERT INTO KhachHang
	VALUES (@MaKH, @TenCty, @DiaChi, @ThanhPho, @DienThoai)
END; GO
-- ^^^^^^ Xoa KhachHang Theo MaKH ^^^^^^^ --
CREATE PROC deleteKhachHang (@MaKH varchar(11))
AS
BEGIN
	DELETE FROM KhachHang
	WHERE @MaKH = KhachHang.MaKH
END; GO
-- ^^^^^^ Cap nhat KhachHang dua theo MaKH ^^^^^^^ --
CREATE PROC updateKhachHang (@MaKH varchar(11), @TenCty nvarchar(255), @DiaChi nvarchar(255), @ThanhPho varchar(11) , @DienThoai varchar(11))
AS
BEGIN
	UPDATE KhachHang SET MaKH = @MaKH, TenCty = @TenCty, DiaChi = @DiaChi, ThanhPho = @ThanhPho, DienThoai = @DienThoai
	WHERE @MaKH = KhachHang.MaKH
END; GO


-- ##################### 6 SrotedProcdure HoaDon ################## --
CREATE PROC getAllHoaDon
AS
BEGIN
	SELECT * FROM HoaDon
END; GO
-- ^^^^^^ Them HoaDon ^^^^^^^ --
CREATE PROC insertHoaDon (@MaHD varchar(11),@MaKH varchar(11),@MaNV varchar(11), @NgayLapHD date, @NgayNhanHang date)
AS
BEGIN
	INSERT INTO HoaDon
	VALUES (@MaHD, @MaKH, @MaNV, @NgayLapHD, @NgayNhanHang)
END; GO
-- ^^^^^^ Xoa HoaDon Theo MaSP ^^^^^^^ --
CREATE PROC deleteHoaDon (@MaHD varchar(11))
AS
BEGIN
	DELETE FROM HoaDon
	WHERE @MaHD = HoaDon.MaHD
END; GO
-- ^^^^^^ Cap nhat san pham dua theo MaSP ^^^^^^^ --
CREATE PROC updateHoaDon (@MaHD varchar(11),@MaKH varchar(11),@MaNV varchar(11), @NgayLapHD date, @NgayNhanHang date)
AS
BEGIN
	UPDATE HoaDon SET MaHD = @MaHD, MaKH = @MaKH, MaNV = @MaNV, NgayLapHD = @NgayLapHD, NgayNhanHang = @NgayNhanHang
	WHERE @MaHD = HoaDon.MaHD
END; GO

-- DROP PROC 