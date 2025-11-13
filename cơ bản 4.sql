CREATE TABLE NhanVien (
    MaNV VARCHAR(10) PRIMARY KEY,
    HoTen VARCHAR(255),
    PhongBan VARCHAR(100),
    ChucVu VARCHAR(100),
    NamSinh INT
);
INSERT INTO NhanVien (MaNV, HoTen, PhongBan, ChucVu, NamSinh)
VALUES
('NV01', 'Trần Văn Mạnh', 'Kinh doanh', 'Nhân viên', 1995),
('NV02', 'Lê Thị Hoa', 'Marketing', 'Trưởng phòng', 1990),
('NV03', 'Nguyễn Anh Dũng', 'Kinh doanh', 'Nhân viên', 1998),
('NV04', 'Phạm Thị Lan', 'Nhân sự', 'Chuyên viên', 1992),
('NV05', 'Hoàng Minh Tuấn', 'Kỹ thuật', 'Trưởng nhóm', 1991);
