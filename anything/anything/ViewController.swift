//
//  ViewController.swift
//  anything
//
//  Created by Tekla on 11/3/23.
//

import UIKit

final class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    

    //MARK: - Properties
    private let movieList = MovieInfo.movieList
    
    private let profileBarButton: UIBarButtonItem = {
        let button = UIButton()
        button.setTitle("Profile", for: .normal)
        button.backgroundColor = .orange
        NSLayoutConstraint.activate([button.widthAnchor.constraint(equalToConstant: 77), button.heightAnchor.constraint(equalToConstant: 40)])
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        let barButton = UIBarButtonItem(customView: button)
        
        return barButton
    }()
    
    private let logoBarButton: UIBarButtonItem = {
        let button = UIButton()
        let image = UIImage(named: "logo.jpg")
        button.setImage(image, for: .normal)
        let barButton = UIBarButtonItem(customView: button)
        
        return barButton
        
    }()
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Now In Cinemas"
        label.font = .boldSystemFont(ofSize: 22)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let movieCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //collectionView.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellWithReuseIdentifier: <#T##String#>)
        collectionView.backgroundColor = .red
        return collectionView
    }()
    
    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBackground()
        addSubViews()
        setUpNavigationBar()
        setUpCollectionView()
        setUpConstraints()
    }

    
    
    //MARK: - Private Methods
    
    private func setUpBackground() {
        view.backgroundColor = UIColor(red: 26/255, green: 34/255, blue: 50/255, alpha: 1)
    }
    
    private func addSubViews() {
        view.addSubview(headerLabel)
        view.addSubview(movieCollectionView)
    }
    
    
    private func setUpNavigationBar() {
        navigationItem.setRightBarButton(profileBarButton, animated: true)
        navigationItem.setLeftBarButton(logoBarButton, animated: true)
    }
    
    private func setUpCollectionView() {
       movieCollectionView.dataSource = self
       movieCollectionView.delegate = self
       movieCollectionView.register(MovieInfoCell.self, forCellWithReuseIdentifier: "MovieCollectionCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionCell", for: indexPath)
    
        return cell
    }
    
    private func setUpConstraints() {
        //headerLabel Constraints
        NSLayoutConstraint.activate([
        headerLabel.widthAnchor.constraint(equalToConstant: 342),
        headerLabel.heightAnchor.constraint(equalToConstant: 29),
            headerLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            headerLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ])
        //movieCollectionView Constraints
        NSLayoutConstraint.activate([
            movieCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            movieCollectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            movieCollectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            movieCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

