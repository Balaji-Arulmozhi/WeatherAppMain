//
//  ObservableObject.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 19-09-1945.
//

import Foundation


class ObservableObject<T>{
    var value:T?{
        didSet{
            listner?(value)
        }
    }
    private var listner:((T?) -> Void)?
    
    init(value: T? = nil) {
        self.value = value
    }
    
    func bindValue(listner: @escaping (T?) -> Void){
        listner(value)
        self.listner = listner
    }
}
