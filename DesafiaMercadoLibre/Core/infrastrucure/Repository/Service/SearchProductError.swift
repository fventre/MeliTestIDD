//
//  SearchProductError.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 04/07/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import Foundation

enum ApiError: Error {
    case invalidQuery(url: String)
    case error(_ error: Error)
}
