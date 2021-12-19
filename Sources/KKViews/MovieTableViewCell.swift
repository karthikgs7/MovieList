//
//  File.swift
//  
//
//  Created by Karthikeyan Ganesan on 19/12/21.
//

import UIKit

public final class MovieTableViewCell: UITableViewCell {
    
    private lazy var posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var addToPlaylistButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.setContentCompressionResistancePriority(.required, for: .vertical)
        return label
    }()
    
    private lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        return label
    }()
    
    private lazy var playlistLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.setContentHuggingPriority(.required, for: .vertical)
        return label
    }()
}

// MARK: Private helper methods
private extension MovieTableViewCell {
    
    func setup() {
        setupPosterImageView()
        setupTitleLabel()
        setupRatingLabel()
        setupPlaylistLabel()
    }
    
    func setupPosterImageView() {
        addSubview(posterImageView)
        
        posterImageView.translatesAutoresizingMaskIntoConstraints = true
        
        addConstraints([
            posterImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            posterImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            posterImageView.topAnchor.constraint(equalTo: topAnchor),
            posterImageView.heightAnchor.constraint(equalTo: posterImageView.widthAnchor, multiplier: 0.75)
        ])
    }
    
    func setupTitleLabel() {
        addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addConstraints([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: posterImageView.bottomAnchor, constant: 20),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
        
    }
    
    func setupRatingLabel() {
        
    }
    
    func setupPlaylistLabel() {
        
    }
}
