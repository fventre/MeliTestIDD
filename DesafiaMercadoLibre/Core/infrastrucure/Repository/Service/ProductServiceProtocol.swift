//
//  ProductServiceProtocol.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 04/07/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import Foundation
protocol ProductServiceProtocol {    
    func get(path: String, params: [String: Any]?) -> (Data?, Error?)
}
