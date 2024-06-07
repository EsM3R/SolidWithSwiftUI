//
//  Product.swift
//  Solid
//
//  Created by Mehmet Vural on 6.06.2024.
//

import Foundation


class Product : Identifiable{
    
    private let _id : Int
    private let _name : String
    private var _price : Double
    
    
    init(id: Int, name: String, price: Double) {
        self._id = id
        self._name = name
        self._price = price
    }
    
    var price : Double {
        get {return _price}
        set{_price = newValue}
    }
    
    var name : Double {
        get {return _price}
    
    }
}
