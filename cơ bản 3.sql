CREATE TABLE DonHang (
    MaDonHang INT PRIMARY KEY,
    NgayDatHang DATE,
    TongGiaTri INT,
    ThanhPhoGiaoHang VARCHAR(100)
);
INSERT INTO DonHang (MaDonHang, NgayDatHang, TongGiaTri, ThanhPhoGiaoHang)
VALUES
(101, '2023-10-15', 1500000, 'Hà Nội'),
(102, '2023-10-18', 800000, 'Đà Nẵng'),
(103, '2023-10-20', 2200000, 'TP. Hồ Chí Minh'),
(104, '2023-10-22', 750000, 'Hà Nội'),
(105, '2023-10-25', 3100000, 'TP. Hồ Chí Minh');
