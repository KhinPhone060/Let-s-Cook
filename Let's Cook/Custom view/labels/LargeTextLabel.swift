//
//  LargeTextLabel.swift
//  Let's Cook
//
//  Created by Khin Phone Ei on 13/01/2024.
//

import UIKit

class LargeTextLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        font = UIFont.systemFont(ofSize: 20, weight: .bold)
        textColor = .label
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
