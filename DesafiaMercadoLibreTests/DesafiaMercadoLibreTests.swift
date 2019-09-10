//
//  DesafiaMercadoLibreTests.swift
//  DesafiaMercadoLibreTests
//
//  Created by FEDERICO VENTRE on 18/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import XCTest
import RxSwift
@testable import DesafiaMercadoLibre

class DesafiaMercadoLibreTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        Single.just(helloWorld()).subscribe(onSuccess: { (hello) in
            print("El resultado es \(hello)")
        }) {  error in
            print("El error es \(error)")
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func helloWorld() -> String
    {
        print("ESTOY EJECUTANDO EL METODO")
        return "Hola"
    }
    
}
