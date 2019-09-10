//
//  CodableUtils.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 04/07/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//


import Foundation

class CodableUtils {
    static func decode<T: Codable>( _ data: Data?, model: T.Type) throws -> T {
        guard let data = data else { throw CodableError.emptyData } //Return empty error
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw CodableError.decodingError
        }
    }
}
