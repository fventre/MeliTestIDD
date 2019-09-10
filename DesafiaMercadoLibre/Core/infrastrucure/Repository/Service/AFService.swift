//
//  AFService.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 25/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//


import Foundation
import Alamofire
import Alamofire_Synchronous

import Alamofire
import Alamofire_Synchronous

class AFProductService {
    private let baseUrl: String
    
    required init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
}

extension AFProductService: ProductServiceProtocol {
    func get(path: String, params: [String : Any]?) -> (Data?, Error?) {
        let requestResponse = Alamofire.request(baseUrl + path, parameters: params).responseJSON()
        return (requestResponse.data, requestResponse.error)
    }
}
