# lap4

# BÀI THỰC HÀNH LAB_4_1
*	Navigate to a new screen and back
Chúng ta cùng đi tìm hiểu về Navigation trong flutter:
Hầu hết các ứng dụng đều chứa một số màn hình để hiển thị các loại thông tin khác nhau, Ví dụ : chúng ta có thể có mang hình hiển thị sản phẩm. Sau đó người dùng có thể chạm vào sản phẩm để biết thêm thông tin về sản phẩm trên màn hình mới, cũng có thể như một ứng dụng hình ảnh , ta có thể click vào một ảnh nào đó để biết được thông tin của ảnh.
Trong Android, các màn hình này được gọi là các activities. Trong IOS thì được gọi là ViewControllers. Còn trong Flutter thì các màn hình này được gọi là Widgets.
## Điều hướng giữa 2 màn hình.
*	Trước tiên ta cần tạo ra 2 màn hình.
*	Để chuyển giữa màn hình 1 và màn hình 2 thì ta sử dụng Navigator.push
*	Ở màn hình thứ 2 , để quay trở lại màn hình thứ 1, chúng ta sử dụng Navigator.pop
## Chúng ta cùng bắt đầu thực hiện.
###	Trước tiên ta cần tạo 2 màn hình, mỗi màn hình sẽ có 1 nút button ở giữa để thực hiện thao tác
*	Xây dựng màn hình 1 với nút “Launch screen”
![1](https://user-images.githubusercontent.com/70943426/98436213-3f48ec80-210c-11eb-9057-268b2c9e3b27.png)
*	Ở màn hình 1: sử dụng Navigator.push. Phương thức push sẽ thêm router vào trong 1 stack chứa toàn bộ Routers của Navigator.
	Chúng ta sẽ sử dụng Navigator.pushNamed(context, ‘/second’) để navigator tới màn hình mới.
*	Navigator nhận vào tối thiểu 2 tham số (BuildContext, String,{Object}), String ở đây chính là tên chúng ta định nghĩa cho từng router.
*	Màn hình thứ 2 với nút “Go Back!”
![2](https://user-images.githubusercontent.com/70943426/98436361-4de3d380-210d-11eb-9c8e-b86c5ea8df80.png)
*	Ở màn hình thứ 2 chúng ta sử dụng Navigator.pop. Sau khi push sang một màn hình mới, chúng ta sẽ sử dụng phương thức Navigator để quay trở lại màn hình đầu tiên. Phương thức pop sẽ xóa route hiện tại ra khỏi stack chứa toàn bộ Routers của Navigator.
*	Cách triển khai đơn giản là trong màn hình thứ 2 chúng ta chỉ cần thêm vào dòng Navigator.pop(context) vào trong onPressed().
* Và đây là kết quả ta được:
![3](https://user-images.githubusercontent.com/70943426/98436387-81266280-210d-11eb-93f2-f33c6c5ba737.png)
* Click vào ‘Launch Screen’ để thực hiện sang màn hình 2.
![4](https://user-images.githubusercontent.com/70943426/98436421-a2874e80-210d-11eb-989b-8dea027e5188.png)


