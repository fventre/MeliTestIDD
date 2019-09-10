//
//  SearchProduct.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 18/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import Foundation
import RxSwift

class SearchProduct {
    private let productRepository: ProductRepositoryProtocol
    
    required init(productRepository: ProductRepositoryProtocol) {
        self.productRepository = productRepository
    }
}

extension SearchProduct {
    func execute(query: Query) throws -> [Product] {
            let products = try PerformAction.perform(productRepository.findBy(query: query),orThrow: DomainError.genericError)
        return products
        
    }
    
    func executeRX(query: Query) -> Single<[Product]> {        
        return Single.deferred({ () -> PrimitiveSequence<SingleTrait, [Product]> in
            do {
                return try Single.just(self.execute(query: query))
            } catch {
                return Single.error(DomainError.genericError)
            }
        })
    }
}
