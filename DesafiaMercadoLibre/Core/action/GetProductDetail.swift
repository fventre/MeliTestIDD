//
//  GetProductDetail.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 19/08/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import Foundation
class GetProductDetail {
    private let productRepository: ProductRepositoryProtocol
    
    required init(repository: ProductRepositoryProtocol) {
        self.productRepository = repository
    }
    
    func execute(id: String) throws -> Product {
        return try PerformAction.perform(productRepository.getProductDetail(id: id), orThrow: DomainError.genericError)
    }
}
