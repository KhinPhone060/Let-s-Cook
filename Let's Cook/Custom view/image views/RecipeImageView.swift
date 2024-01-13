//
//  RecipeImageView.swift
//  Let's Cook
//
//  Created by Khin Phone Ei on 13/01/2024.
//

import UIKit

class RecipeImageView: UIImageView {

    let placeholderImage = UIImage(named: "demo-recipe-image")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius  = 10
        clipsToBounds       = true
        image               = placeholderImage
        contentMode         = .scaleAspectFill
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
