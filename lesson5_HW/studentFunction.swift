//
//  studentFunction.swift
//  lesson5_HW
//
//  Created by Le Thanh Son on 11/10/2023.
//

import Foundation
//LƯU TRỮ CÁC STRUCT CHỨA DỮ LIỆU SV
var students = [Student]()
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
