# BÀI LÀM – ÔN TẬP NGÀY 2

- **Họ tên:Nguyễn Vương Anh Minh**
- **Lớp:CNTT1**
- **Link repository:**
- **Hệ điều hành (Windows/macOS): Windows**

## Bài 1. Lọc log thủ công

### Lệnh đã chạy

```shell
select-string ERROR logs/access.log  > logs/error_report.txt

```

### 2 dòng lỗi đầu tiên trong error_report.txt

```text
logs\access.log:4:2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
logs\access.log:6:2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)

```

## Bài 2. Đếm bằng pipeline

### Lệnh

```shell
PS D:\trung-tam-tieng-anh> (cat .\logs\access.log | sls WARNING).count
PS D:\trung-tam-tieng-anh> (cat .\logs\paymen.log | sls ERROR).count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
WARNING trong access.log: 4
ERROR trong payment.log: 3
```

## Bài 3. Chạy script auto_warning (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_warning.ps1

```

### Nội dung file logs/warning_report.txt

```text
=== CANH BAO THANH TOAN ===

2025-10-18 09:19:13 [WARNING] Cong thanh toan phan hoi cham
2025-10-18 09:28:16 [WARNING] Nhieu lan nhap sai ma OTP
2025-10-18 09:43:01 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:46:22 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:49:43 [WARNING] So du vi gan bang hoc phi
```

## Bài 4. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
"=== TONG HOP ACCESS LOG ===" > .\logs\tong_hop_ngay2.txt
sls ERROR .\logs\access.log >> .\logs\tong_hop_ngay2.txt
sls WARNING .\logs\payment.log >> .\logs\tong_hop_ngay2.txt

```

### Nội dung file logs/tong_hop_ngay2.txt

```text
=== TONG HOP ACCESS LOG ===

logs\access.log:4:2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
logs\access.log:6:2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
logs\access.log:8:2025-10-18 08:33:51 [ERROR] Ket noi may chu du lieu that bai
logs\access.log:9:2025-10-18 08:37:19 [ERROR] Ket noi may chu du lieu that bai
logs\access.log:12:2025-10-18 08:49:43 [ERROR] Het thoi gian cho (timeout)
logs\access.log:13:2025-10-18 08:53:11 [ERROR] Het thoi gian cho (timeout)


logs\payment.log:4:2025-10-18 09:19:13 [WARNING] Cong thanh toan phan hoi cham
logs\payment.log:7:2025-10-18 09:28:16 [WARNING] Nhieu lan nhap sai ma OTP
logs\payment.log:12:2025-10-18 09:43:01 [WARNING] So du vi gan bang hoc phi
logs\payment.log:13:2025-10-18 09:46:22 [WARNING] So du vi gan bang hoc phi
logs\payment.log:14:2025-10-18 09:49:43 [WARNING] So du vi gan bang hoc phi



```

## Bài 5. Câu hỏi ngắn

- **a)Lệnh > để dùng vào đầu trang nếu có nội dung gì trước đó thì sẽ bị thay thế bằng lệnh mới. Lệnh >> để ghi tiếp các nội dung tiếp theo**
- **b) Nếu dùng lệnh > thay vì >> thì các dòng ERROR sẽ thay thế dòng đầu tiên "=== TONG HOP ACCESS LOG ==="**
- **c) dùng đường dẫn tuyệt đối có thể dẫn đến tình trạng không tìm thấy file khi di chuyển đến máy người khác** 

## Tự chấm (điền sau khi có đáp án)

- **Điểm tự chấm:** ..../100
- **Lỗi mình đã mắc và cách sửa:**
