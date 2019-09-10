//
//  UIView-extension.swift
//  DesafiaMercadoLibre
//
//  Created by FEDERICO VENTRE on 17/07/2019.
//  Copyright © 2019 FEDERICO VENTRE. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorners(cornerRadius: CGFloat = 4, clipsToBounds: Bool = true) {
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = clipsToBounds
    }
    
    func setShadow(color: CGColor = UIColor.lightGray.cgColor, opacity: Float = 0.3, offset: CGSize = CGSize(width: 0, height: 10), radius: CGFloat = 10) {
        self.layer.shadowColor = color
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.masksToBounds = false
    }
}
