//
//  SearchProductInstance.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 18/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import UIKit

class SearchProductInstance {
    
    static func viewController() -> SearchProductViewController {
        let searchScreenPresenter = presenter()
        let viewController = SearchProductViewController(presenter: searchScreenPresenter)
        searchScreenPresenter.view = viewController
        return viewController
    }
    
    private static func presenter() -> SearchProductPresenter {
        return SearchProductPresenter(searchProduct: ProductAppInstance.resolveSearchProducts())
    
    }

}
