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


//LƯU TRỮ CÁC STRUCT CHỨA DỮ LIỆU SV
var students = [Student]()
print(students)
//THÊM MỚI SINH VIÊN
func addStudent() {
    //
    var name = ""
    var maSV = ""
    var toan: Float = 0
    var ly: Float = 0
    var hoa: Float = 0
    
    while name.isEmpty {
        print("Nhập tên sinh viên:")
        if let input = readLine(), !input.isEmpty {
            name = input
        } else {
            print("Tên không được để trống.")
        }
    }
    
    while maSV.isEmpty {
        print("Nhập mã sinh viên:")
        if let input = readLine(), !input.isEmpty {
            maSV = input
        } else {
            print("Mã sinh viên không được để trống.")
        }
    }
    //Nhập điểm các môn, không bắt buộc nhập, nếu ko nhập thì mặc định = 0
    print("Nhập điểm Toán:")
    if let input = readLine(), let score = Float(input) {
        toan = score
    }
    
    print("Nhập điểm Lý:")
    if let input = readLine(), let score = Float(input) {
        ly = score
    }
    
    print("Nhập điểm Hoá:")
    if let input = readLine(), let score = Float(input) {
        hoa = score
    }
    
    let student = Student(name: name, maSV: maSV, toan: toan, ly: ly, hoa: hoa)
    students.append(student)
    print("Thêm sinh viên thành công!")
}

//CẬP NHẬT ĐIỂM SINH VIÊN
func updateStudentScore() {
    //
}


//HIỂN THỊ DS SINH VIÊN THEO THỨ TỰ ĐIỂM
func showStudentList() {
    //
    let sortedStudents = students.sorted(by: { $0.trungBinh > $1.trungBinh })
    
    print("\nDanh sách sinh viên theo thứ tự điểm trung bình giảm dần:")
    for student in sortedStudents {
        print("Tên: \(student.name), Mã SV: \(student.maSV), Điểm Trung bình: \(student.trungBinh)")
    }
}


//HÀM TỔNG QUẢN LÝ CHỨC NĂNG
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

