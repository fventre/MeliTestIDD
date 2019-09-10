//
//  ProductAppInstance.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 16/07/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import UIKit

struct ProductAppInstance {
    static let baseUrl = "https://api.mercadolibre.com"
    
    private init() {}
    
    static func resolveSearchProducts() -> SearchProduct {
        return SearchProduct(productRepository: productRepository())
    }
    
    static func productRepository() -> ProductRepositoryProtocol {
        return ProductRepository(service: AFProductService(baseUrl: baseUrl))
    }
    
}
