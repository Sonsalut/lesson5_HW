//
//  storeClass.swift
//  lesson5_HW
//
//  Created by Le Thanh Son on 11/10/2023.
//

import Foundation
class Product {
    var name: String
    var productCode: String
    var price: Double
    var quantityInStock: Int

    init(name: String, productCode: String, price: Double, quantityInStock: Int) {
        self.name = name
        self.productCode = productCode
        self.price = price
        self.quantityInStock = quantityInStock
    }
}

class Store {
    var products: [Product] = []

    func addProduct() {
        print("Nhập thông tin sản phẩm mới:")
        print("Tên sản phẩm:")
        if let name = readLine(), !name.isEmpty {
            print("Mã sản phẩm:")
            if let productCode = readLine(), !productCode.isEmpty {
                print("Giá bán:")
                if let priceStr = readLine(), let price = Double(priceStr) {
                    print("Số lượng trong kho:")
                    if let quantityStr = readLine(), let quantity = Int(quantityStr) {
                        let product = Product(name: name, productCode: productCode, price: price, quantityInStock: quantity)
                        products.append(product)
                        print("Thêm sản phẩm thành công.")
                    } else {
                        print("Số lượng không hợp lệ.")
                    }
                } else {
                    print("Giá không hợp lệ.")
                }
            } else {
                print("Mã sản phẩm không được để trống.")
            }
        } else {
            print("Tên sản phẩm không được để trống.")
        }
    }

    func updateProduct() {
        print("Nhập mã sản phẩm cần cập nhật:")
        if let productCode = readLine(), !productCode.isEmpty {
            if let index = products.firstIndex(where: { $0.productCode == productCode }) {
                print("Nhập thông tin mới cho sản phẩm:")
                print("Tên mới:")
                if let newName = readLine(), !newName.isEmpty {
                    print("Giá mới:")
                    if let newPriceStr = readLine(), let newPrice = Double(newPriceStr) {
                        print("Số lượng mới trong kho:")
                        if let newQuantityStr = readLine(), let newQuantity = Int(newQuantityStr) {
                            products[index].name = newName
                            products[index].price = newPrice
                            products[index].quantityInStock = newQuantity
                            print("Cập nhật sản phẩm thành công.")
                        } else {
                            print("Số lượng không hợp lệ.")
                        }
                    } else {
                        print("Giá không hợp lệ.")
                    }
                } else {
                    print("Tên sản phẩm mới không được để trống.")
                }
            } else {
                print("Không tìm thấy sản phẩm với mã \(productCode).")
            }
        } else {
            print("Mã sản phẩm không được để trống.")
        }
    }

    func listProducts() {
        for product in products {
            print("Tên: \(product.name), Mã SP: \(product.productCode), Giá: \(product.price), Số lượng trong kho: \(product.quantityInStock)")
        }
    }

    func searchProductByName(name: String) -> [Product] {
        return products.filter { $0.name == name }
    }
}
