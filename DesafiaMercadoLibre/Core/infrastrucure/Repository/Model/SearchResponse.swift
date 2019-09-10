//
//  SearchResponse.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 25/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import Foundation

struct SearchResponse: Codable {
    let results: [ProductRepresentation]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
    
    func products() -> [Product]{
        return results.compactMap {$0.toProductDomain()}
    }
    
}
