//
//  ProductRepository.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 25/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import Foundation

class ProductRepository {
    
    private let service : ProductServiceProtocol
    private let path = "/sites/MLA/search"
    
    init(service: ProductServiceProtocol) {
        self.service = service
    }
    
}

extension ProductRepository: ProductRepositoryProtocol {
    func getProductDetail(id: String) throws -> Product {
        let (data, error) = service.get(path: "/items/\(id)", params: nil)
        
        if let error = error {
            throw ApiError.error(error)
        }
        
        let parsedData = try CodableUtils.decode(data, model: ProductRepresentation.self)
        
        return parsedData.toProductDomain()
    }
    
    func findBy(query: Query) throws -> [Product] {
        let param = ["q": query]
        let (response, error) = service.get(path: path, params: param)
        
        if let error = error {
            throw ApiError.error(error)
        }
        let parsedData = try CodableUtils.decode(response, model: SearchResponse.self)
        
        return parsedData.products()
    }
}



