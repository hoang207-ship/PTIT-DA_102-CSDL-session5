-- ==============================================
-- BÁO CÁO PHÂN TÍCH TÌNH HÌNH KINH DOANH - CSDL SAKILA
-- ==============================================

-- Nhiệm vụ 1: Lập danh sách các giao dịch có giá trị cao
-- ------------------------------------------------------
SELECT 
    customer_id,
    amount,
    payment_date
FROM sakila.payment
WHERE payment_date > '2005-08-01'
  AND amount > 9.00
ORDER BY amount DESC;


-- Nhiệm vụ 2: Tìm kiếm các giao dịch đặc biệt
-- ------------------------------------------------------
SELECT 
    payment_id,
    customer_id,
    staff_id,
    amount
FROM sakila.payment
WHERE amount = 0.00
   OR (staff_id = 1 AND amount > 10.00)
ORDER BY customer_id ASC;


-- Nhiệm vụ 3: Phân tích và nhận định
-- ------------------------------------------------------
/*
======================================
 PHÂN TÍCH & NHẬN ĐỊNH KINH DOANH
======================================

1️⃣ KHÁCH HÀNG VIP:
- Dựa vào kết quả từ Nhiệm vụ 1, nhóm khách hàng có giao dịch > 9.00 
  sau ngày 2005-08-01 được xem là nhóm chi tiêu cao, có tiềm năng lớn.
- Việc sắp xếp theo số tiền giảm dần (DESC) giúp nhanh chóng nhận diện
  những khách hàng VIP để có thể gửi ưu đãi hoặc chương trình tri ân phù hợp.

2️⃣ GIAO DỊCH BẤT NGỜ:
- Những giao dịch có số tiền = 0.00 có thể là:
   + Giao dịch thuộc chương trình khuyến mãi (thuê DVD miễn phí).
   + Giao dịch thử nghiệm hoặc lỗi hệ thống ghi nhận sai.
- Quản lý cần xem xét kỹ những trường hợp này để tránh thất thoát 
  và đảm bảo dữ liệu phản ánh đúng doanh thu thực tế.

3️⃣ HIỆU SUẤT NHÂN VIÊN:
- Nhân viên có staff_id = 1 thực hiện nhiều giao dịch lớn (> 10.00) 
  có thể cho thấy khả năng phục vụ khách hàng cao cấp tốt.
- Tuy nhiên, để kết luận đây là “hiệu suất tốt”, cần phân tích thêm:
   + Tổng số giao dịch nhân viên đó thực hiện.
   + Tỷ lệ giao dịch thành công / tổng số giao dịch.
   + Doanh thu trung bình mỗi ca làm việc.
- Kết hợp thêm dữ liệu này mới có thể đánh giá chính xác hiệu quả nhân viên.

======================================
 KẾT LUẬN:
Báo cáo trên giúp quản lý:
- Nhận diện khách hàng VIP để giữ chân.
- Kiểm soát rủi ro từ giao dịch bất thường.
- Theo dõi hiệu suất nhân viên để thưởng hoặc đào tạo hợp lý.
======================================
*/
