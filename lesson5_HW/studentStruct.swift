//
//  studentStruct.swift
//  lesson5_HW
//
//  Created by Le Thanh Son on 11/10/2023.
//

import Foundation
struct Student {
    //properties
    let name: String
    var maSV: String
    var toan: Float
    var ly: Float
    var hoa: Float
    
    //khởi tạo - initializer
    
    
    
    //method
    var trungBinh: Float {
        return (toan + ly + hoa)/3
    }

}
