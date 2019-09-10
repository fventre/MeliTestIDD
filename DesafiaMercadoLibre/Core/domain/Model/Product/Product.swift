//
//  Product.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 18/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import UIKit

struct Product {
    let id: String
    let title: String
    let price: Double
    let thumbnail: String
    let condition: String
    
    
    var formattedPrice: String {
        return "$ \(price)"
    }
    
    var formattedCondition: String {
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
