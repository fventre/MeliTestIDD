//
//  SearchScreenView.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 17/07/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import UIKit

class SearchScreenView: UIView {
    
    var products: [ProductView] = []
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0.0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateProducts(_ newProducts: [ProductView]) {
        products = newProducts
        collectionView.reloadData()
    }
    
    func clearProducts() {
        products.removeAll()
    }
    
    private func setup() {
        
        // CollectionView
        collectionView.register(SearchScreenCollectionViewCell.self, forCellWithReuseIdentifier: SearchScreenCollectionViewCell.cellId)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        addSubview(collectionView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
            ])
    }
}

extension SearchScreenView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchScreenCollectionViewCell.cellId, for: indexPath) as! SearchScreenCollectionViewCell
        cell.configure(model: products[indexPath.row])
        return cell
    }
}

extension SearchScreenView: UICollectionViewDelegate {
    
}

extension SearchScreenView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return .init(width: frame.width, height: 130)
    }
    
}
