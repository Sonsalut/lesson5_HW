//
//  main.swift
//  lesson5_HW
//
//  Created by Le Thanh Son on 11/10/2023.
//

import Foundation

import Foundation

print("Bài 1")
//Viết một ứng dụng cho phép quản lý danh sách điểm thi của các sinh viên. Mỗi sinh viên sẽ có thông tin như sau:
//Tên, mã sinh viên, điểm toán, điểm lý, điểm hóa.
//Ứng dụng cho phép thêm mới sinh viên, cập nhật điểm số của sinh viên, hiển thị danh sách sinh viên theo thứ tự điểm trung bình giảm dần. Sử dụng Struct.

//HÀM ĐIỀU KHIỂN CHƯƠNG TRÌNH
func manager() {
    print("Hệ thống quản lý điểm sinh viên")
    print("1. Thêm mới sinh viên")
    print("2. Cập nhật điểm sinh viên")
    print("3. Hiển thị danh sách sinh viên")
    print("4. Thoát")
    print("Nhấn 1/2/3/4 để chọn chức năng")
    
    if let choice = readLine() {
        switch choice {
        case "1":
            addStudent()
        case "2":
            updateStudentScore()
        case "3":
            showStudentList()
        case "4":
            return
        default:
            print("Chức năng không hợp lệ.")
        }
    }
}

manager()

print("Bài 2")
//Viết một ứng dụng cho phép quản lý thông tin của các sản phẩm trong cửa hàng. Mỗi sản phẩm sẽ có thông tin như sau: Tên, mã sản phẩm, giá bán, số lượng trong kho.
//Ứng dụng cho phép thêm mới sản phẩm, cập nhật thông tin của sản phẩm, hiển thị danh sách sản phẩm, tìm kiếm sản phẩm theo tên. Sử dụng Class.

//HÀM ĐIỀU KHIỂN CHƯƠNG TRÌNH
let store = Store()

while true {
    print("\nChọn một tùy chọn:")
    print("1. Thêm sản phẩm")
    print("2. Cập nhật thông tin sản phẩm")
    print("3. Hiển thị danh sách sản phẩm")
    print("4. Tìm kiếm sản phẩm theo tên")
    print("5. Thoát")
    
    if let choice = readLine(), let option = Int(choice) {
        switch option {
        case 1:
            store.addProduct()
        case 2:
            store.updateProduct()
        case 3:
            store.listProducts()
        case 4:
            print("Nhập tên sản phẩm:")
            if let name = readLine(), !name.isEmpty {
                let searchResults = store.searchProductByName(name: name)
                if !searchResults.isEmpty {
                    print("Kết quả tìm kiếm:")
                    for product in searchResults {
                        print("Tên: \(product.name), Mã SP: \(product.productCode), Giá: \(product.price), Số lượng trong kho: \(product.quantityInStock)")
                    }
                } else {
                    print("Không tìm thấy sản phẩm.")
                }
            } else {
                print("Tên sản phẩm không được để trống.")
            }
        case 5:
            exit(0)
        default:
            print("Tùy chọn không hợp lệ. Vui lòng chọn lại.")
        }
    } else {
        print("Vui lòng nhập một số.")
    }
}
