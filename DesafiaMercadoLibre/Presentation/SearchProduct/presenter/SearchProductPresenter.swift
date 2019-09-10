//
//  SearchProductPresenter.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 18/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import UIKit
import RxSwift
protocol SearchProductProtocol: class {
    func showProducts(products: [ProductView])
    func showLoading(show: Bool)
    func showError(show: Bool)
}

class SearchProductPresenter: NSObject {
    weak var view: SearchProductProtocol?
    let searchProduct: SearchProduct
    
    required init(searchProduct: SearchProduct) {
        self.searchProduct = searchProduct
    }
    
    func viewLoaded() {
        view?.showLoading(show: true)
    }
    
    func onSearchProduct(query: String) {
     searchProduct.executeRX(query: Query(q: query, limit: 10, offset: 0))
        .subscribe(onSuccess: { [weak self] (products) in
            self?.view?.showProducts(products: products.compactMap{ ProductView(id: $0.id, title: $0.title, price: $0.price, thumbnail: $0.thumbnail, condition: $0.condition)})
        }) { [weak self] (error) in
            self?.view?.showError(show: true)
            
        }
        
    }
}
