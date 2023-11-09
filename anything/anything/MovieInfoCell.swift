//
//  MovieInfoCell.swift
//  anything
//
//  Created by Tekla on 11/3/23.
//

import UIKit

class MovieInfoCell: UICollectionViewCell {
    
    static let identifier = "MovieCollectionCell"
    private let movieList = MovieInfo.movieList
    
    //MARK: - Properties
    private let cellStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 2
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    private let poster: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let genreLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    //MARK: - SetUp
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        setUpConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubViews() {
        addSubview(cellStackView)
        cellStackView.addArrangedSubview(poster)
        cellStackView.addArrangedSubview(titleLabel)
        cellStackView.addArrangedSubview(genreLabel)
    }
    func configurate(movieList: MovieInfo) {
        poster.image = movieList.image
        titleLabel.text = movieList.title
        genreLabel.text = movieList.genre
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            cellStackView.topAnchor.constraint(equalTo: topAnchor),
            cellStackView.rightAnchor.constraint(equalTo: rightAnchor),
            cellStackView.leftAnchor.constraint(equalTo: leftAnchor),
            cellStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
