CREATE TABLE Sach (
    MaSach VARCHAR(10) PRIMARY KEY,
    TenSach VARCHAR(255),
    TacGia VARCHAR(255),
    TheLoai VARCHAR(100),
    GiaBan INT
);
INSERT INTO Sach (MaSach, TenSach, TacGia, TheLoai, GiaBan)
VALUES
('SGK01', 'Đắc Nhân Tâm', 'Dale Carnegie', 'Kỹ năng sống', 120000),
('SVK02', 'Nhà Giả Kim', 'Paulo Coelho', 'Văn học', 89000),
('STN03', 'Lược Sử Người', 'Yuval Noah Harari', 'Lịch sử', 150000),
('SKD04', 'Tư Duy Nhanh và Lôi', 'Daniel Kahneman', 'Kinh doanh', 99000);
