//
//  SmallerTextLabel.swift
//  Let's Cook
//
//  Created by Khin Phone Ei on 13/01/2024.
//

import UIKit

class SmallerTextLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textColor: UIColor) {
        super.init(frame: .zero)
        self.textColor = textColor
        configure()
    }
    
    private func configure() {
        font                      = UIFont.systemFont(ofSize: 11, weight: .regular)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
