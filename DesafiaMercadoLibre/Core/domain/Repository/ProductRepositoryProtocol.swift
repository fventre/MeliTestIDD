//
//  ProductRepositoryProtocol.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 25/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import Foundation

protocol ProductRepositoryProtocol {
    func findBy(query: Query) throws -> [Product]
    func getProductDetail(id: String) throws -> Product
}
