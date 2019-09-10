//
//  ProductRepresentation.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 23/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import Foundation

struct ProductRepresentation: Codable {
    var id: String
    //var siteId: String
    var title: String
    var price: Double = 0.00
    var thumbnail: String = ""
    var condition: String
    
    enum StructProductKeys:String, CodingKey {
        case id = "id"
        //case siteId = "site_id"
        case thumbnail = "thumbnail"
        case condition, title, price
    }
    
    func toProductDomain() -> Product {
        return Product(id: self.id,
                       title: self.title,
                       price: self.price,
                       thumbnail: self.thumbnail,
                       condition: self.condition )
    }
    
}
