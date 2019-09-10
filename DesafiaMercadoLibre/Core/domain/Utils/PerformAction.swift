//
//  PerformAction.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 04/07/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import Foundation

class PerformAction {
    static func perform<T>(_ expression: @autoclosure () throws -> T,
                           orThrow errorExpression: @autoclosure () -> Error) throws -> T {
        do {
            return try expression()
        } catch {
            throw errorExpression()
        }
    }
}
