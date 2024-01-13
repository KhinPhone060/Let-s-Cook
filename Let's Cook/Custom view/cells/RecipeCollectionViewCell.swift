//
//  RecipeCollectionViewCell.swift
//  Let's Cook
//
//  Created by Khin Phone Ei on 13/01/2024.
//

import UIKit

class RecipeCollectionViewCell: UICollectionViewCell {
    static let reuseId      = "RecipeCell"
    
    let recipeImageView     = RecipeImageView(frame: .zero)
    let recipeTitleLabel    = UILabel()
    let creatorNameLabel    = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        createRecipeImageView()
        createRecipeTitleAndCreatorName()
    }
    
    private func createRecipeImageView() {
        addSubview(recipeImageView)
        
        NSLayoutConstraint.activate([
            recipeImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            recipeImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            recipeImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            recipeImageView.widthAnchor.constraint(equalToConstant: contentView.bounds.width),
            recipeImageView.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        let overlay: UIView = UIView(frame: CGRect(x: 0, y: 0, width: contentView.frame.width, height: 150))
        overlay.layer.cornerRadius = 10
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.frame = overlay.bounds
        gradientLayer.cornerRadius = 10

        overlay.layer.addSublayer(gradientLayer)
        addSubview(overlay)
        
        addSubview(overlay)
    }
    
    private func createRecipeTitleAndCreatorName() {
        addSubview(recipeTitleLabel)
        addSubview(creatorNameLabel)
        
        let labelPadding: CGFloat = 10
        
        recipeTitleLabel.numberOfLines = 2
        recipeTitleLabel.textAlignment = .left
        recipeTitleLabel.text = "Lamb chops with fruity couscous and mint"
        recipeTitleLabel.textColor = .white
        let fontSize = UIFont.preferredFont(forTextStyle: .caption1).pointSize
        recipeTitleLabel.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        recipeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        creatorNameLabel.numberOfLines = 1
        creatorNameLabel.textAlignment = .left
        creatorNameLabel.text = "by creator name"
        creatorNameLabel.textColor = .white
        let fontSize2 = UIFont.preferredFont(forTextStyle: .caption2).pointSize
        creatorNameLabel.font = UIFont.systemFont(ofSize: fontSize2, weight: .thin)
        creatorNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            recipeTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 90),
            recipeTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: labelPadding),
            recipeTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -labelPadding),
            recipeTitleLabel.heightAnchor.constraint(equalToConstant: 34),
            
            creatorNameLabel.topAnchor.constraint(equalTo: recipeTitleLabel.bottomAnchor, constant: 3),
            creatorNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: labelPadding),
            creatorNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -labelPadding),
            creatorNameLabel.heightAnchor.constraint(equalToConstant: 12)
        ])
    }
}
