//
//  SectionHeader.swift
//  MultipleSections
//
//  Created by Дарья Носова on 18.04.2022.
//  Copyright © 2022 Алексей Пархоменко. All rights reserved.
//

import Foundation
import UIKit

class SectionHeader: UICollectionReusableView {
    
    static let reuserId = "SectionHeader"
    
    let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customizeElements()
        setupConstraints()
    }
    
    private func customizeElements() {
        title.textColor = .black
        title.font = UIFont(name: "avenir", size: 20)
        title.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupConstraints() {
        addSubview(title)
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor),
            title.leadingAnchor.constraint(equalTo: leadingAnchor),
            title.trailingAnchor.constraint(equalTo: trailingAnchor),
            title.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
