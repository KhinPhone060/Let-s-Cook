//
//  RecipeFeedViewController.swift
//  Let's Cook
//
//  Created by Khin Phone Ei on 12/01/2024.
//

import UIKit

class RecipeFeedViewController: UIViewController {
    
    let userNameLabel = LargeTextLabel()
    let questionLabel = SmallerTextLabel(textColor: .gray)
    var recipeCollectionView: UICollectionView!
    
    let padding:CGFloat = 20

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        createNameView()
        configureCollectionView()
    }
    
    func createNameView() {
        view.addSubview(userNameLabel)
        view.addSubview(questionLabel)
        
        let userName = "Khin Phone Ei"
        userNameLabel.text = "Hello, \(userName)"
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        questionLabel.text = "What are you cooking today?"
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            userNameLabel.trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: -padding),
            userNameLabel.heightAnchor.constraint(equalToConstant: 30),
            
            questionLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 8),
            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            questionLabel.trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: -padding),
            questionLabel.heightAnchor.constraint(equalToConstant: 17)
        ])
    }
}

extension RecipeFeedViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecipeCollectionViewCell.reuseId, for: indexPath)
        return cell
    }
    
    func configureCollectionView() {
        recipeCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UIHelper.createTwoColumnFlowLayout(in: view))
        view.addSubview(recipeCollectionView)
        recipeCollectionView.delegate = self
        recipeCollectionView.dataSource = self
        recipeCollectionView.showsVerticalScrollIndicator = false
        recipeCollectionView.register(RecipeCollectionViewCell.self, forCellWithReuseIdentifier: RecipeCollectionViewCell.reuseId)
        
        recipeCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            recipeCollectionView.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 30),
            recipeCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            recipeCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            recipeCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
