//
//  PayManage.swift
//  Solid
//
//  Created by Mehmet Vural on 7.06.2024.
//

import Foundation


protocol IPayable {
    
    func pay(_ amount : Double)
}

class PaypalManager : IPayable {
    func pay(_ amount: Double) {
        print("paid with paypal amount : \(amount)")
    }
}
class CreditCardManager : IPayable {
    func pay(_ amount: Double) {
        print("paid with credit card amount : \(amount)")
    }
    
    
}
class CashManager : IPayable {
    func pay(_ amount: Double) {
        print("will be paid with cash amount : \(amount)")
    }

}

class PayableManager {
    
    let payable : IPayable
    
    init(payable: IPayable) {
        self.payable = payable
    }
    
    func pay(_ amount : Double){
        payable.pay(amount)
    }
}
