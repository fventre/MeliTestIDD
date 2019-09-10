//
//  SearchProductViewController.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 18/06/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import UIKit

class SearchProductViewController: UIViewController {

    private let presenter: SearchProductPresenter
    private let searchScreenView = SearchScreenView()
    
    required init(presenter: SearchProductPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let view = searchScreenView
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Search"
        self.definesPresentationContext = true
        
        setupSearchController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if #available(iOS 11.0, *) {
            navigationItem.largeTitleDisplayMode = .always
            navigationController?.navigationBar.prefersLargeTitles = true
        }
    }
    
    
    fileprivate func setupSearchController() {
        let search = UISearchController(searchResultsController: nil)
        search.searchBar.delegate = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Search Products"
        navigationItem.searchController = search
        navigationItem.hidesSearchBarWhenScrolling = false
    }

}

extension SearchProductViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchScreenView.clearProducts()
        guard let textToSearch = searchBar.text, !textToSearch.isEmpty else {
            return
        }
        
        presenter.onSearchProduct(query: textToSearch)
    }
}

extension SearchProductViewController: SearchProductProtocol {
    
    func showLoading(show: Bool) {
        //TODO:
    }
    
    func showError(show: Bool) {
        //TODO:
    }
    
    func showProducts(products: [ProductView]) {
        searchScreenView.updateProducts(products)
    }
    
    
}
