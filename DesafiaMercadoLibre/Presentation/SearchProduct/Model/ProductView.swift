//
//  ProductView.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 21/07/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//



struct ProductView {
    let id: String
    let title: String
    let price: String
    let thumbnail: String
    let condition: String
    
    init(id: String, title: String, price: Double, thumbnail: String, condition:String) {
        self.id = id
        self.title = title
        self.price = ProductView.formattedPrice(price: price)
        self.condition = ProductView.formattedCondition(condition: condition)
        self.thumbnail = thumbnail
    }
    
    private static func formattedPrice(price: Double)-> String {
        return "$ \(price)"
    }
    
    private static func formattedCondition(condition: String) -> String {
        switch condition {
        case "new":
            return "Nuevo"
        case "used":
            return "Usado"
            
        default:
            return ""
        }
    }

}
