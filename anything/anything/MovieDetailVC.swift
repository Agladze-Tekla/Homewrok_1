//
//  MovieDetailVC.swift
//  anything
//
//  Created by Tekla on 11/3/23.
//

import UIKit

class MovieDetailVC: UIViewController {

    
    //MARK: - Properties
    private let detailrackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
       // stack.layoutMargins =
        //stack.isLayoutMarginRelativeArrangment = true
        
        return stack
    }()
    
    private let imdbStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
       // stack.layoutMargins =
       // stack.isLayoutMarginRelativeArrangment = true
        
        return stack
    }()
    
    private let certificateStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
       // stack.layoutMargins =
       // stack.isLayoutMarginRelativeArrangment = true
        
        return stack
    }()
    
    private let runTimeStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
       // stack.layoutMargins =
       // stack.isLayoutMarginRelativeArrangment = true
        
        return stack
    }()
    
    private let releaeYearStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
       // stack.layoutMargins =
       // stack.isLayoutMarginRelativeArrangment = true
        
        return stack
    }()
    
    private let genreStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
       // stack.layoutMargins =
       // stack.isLayoutMarginRelativeArrangment = true
        
        return stack
    }()
    
    private let directorStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
       // stack.layoutMargins =
       // stack.isLayoutMarginRelativeArrangment = true
        
        return stack
    }()
    
    private let castStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
       // stack.layoutMargins =
       // stack.isLayoutMarginRelativeArrangment = true
        
        return stack
    }()
    
    
    private let moviePoster: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private let imdb: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "IMDB"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let imdbLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    private let synopsisLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let certificate: UILabel = {
        let label = UILabel()
        label.text = "Certificate"
        label.textColor = .gray
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    private let certificateLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    
    private let runTime: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "Run Time"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    private let runTimeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    private let release: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "Release Year"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    private let releasebLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    private let genre: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "Genre"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    private let genreLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    private let director: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "Directors"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    private let directorLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    private let cast: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "Release Year"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    private let castLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        setUpConstraints()
    }
    
    
    //MARK: - Private Methods

    private func addSubViews() {
        view.addSubview(detailrackView)
        detailrackView.addArrangedSubview(moviePoster)
        detailrackView.addArrangedSubview(imdbStackView)
        detailrackView.addArrangedSubview(synopsisLabel)
        detailrackView.addArrangedSubview(certificateStackView)
        detailrackView.addArrangedSubview(runTimeStackView)
        detailrackView.addArrangedSubview(releaeYearStackView)
        detailrackView.addArrangedSubview(genreStackView)
        detailrackView.addArrangedSubview(directorStackView)
        detailrackView.addArrangedSubview(castStackView)
        
        imdbStackView.addArrangedSubview(imdbLabel)
        imdbStackView.addArrangedSubview(imdb)
        
        certificateStackView.addArrangedSubview(certificate)
    
    }
    
    private func setUpConstraints() {
        
    }
}
