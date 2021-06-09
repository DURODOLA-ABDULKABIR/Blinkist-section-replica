//
//  HeaderCollectionReusableView.swift
//  BlinkistApp1
//
//  Created by Decagon on 20.4.21.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "HeaderCollectionReusableView"
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Header"
        label.textColor = .white
        return label
    }()
    
    public func configure() {
        backgroundColor = .blue
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
}
