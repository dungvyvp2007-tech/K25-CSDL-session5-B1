-- Trong SQL, toán tử AND có độ ưu tiên cao hơn OR. Do đó, hệ thống sẽ thực hiện gom nhóm các điều kiện liên quan đến AND trước.
-- Câu lệnh bị hiểu nhầm thành 2 vế tách biệt bởi dấu OR:
-- Vế 1: district = 'Quận 1' $\rightarrow$ Lấy tất cả quán ở Quận 1, không quan tâm rating.
-- Vế 2: (district = 'Quận 3' AND rating > 4.0) $\rightarrow$ Chỉ lấy quán xịn ở Quận 3.
-- Kết quả: Quán 1 sao ở Quận 1 vẫn lọt vào danh sách vì nó thỏa mãn hoàn toàn Vế 1.

select restaurant_name , address , rating
from Restaurants
where (district ='Quận 1' or district ='Quận 3') and rating > 4.0;

