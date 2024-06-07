//
//  Product.swift
//  Solid
//
//  Created by Mehmet Vural on 7.06.2024.
//

import Foundation


class DiscountProduct  : Product{
    
    let discountRate : Double
    
    init(id : Int , name : String  , price : Double , discountRate : Double){
        self.discountRate = discountRate
        super.init(id: id, name: name , price: price)
    }
    override var price: Double {
        get{
            let superClassPrice  = super.price
            
            return superClassPrice - (superClassPrice * (discountRate) / 100)
        }
   
    }
    
}



