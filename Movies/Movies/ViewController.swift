//
//  ViewController.swift
//  Movies
//
//  Created by Karthikeyan Ganesan on 19/12/21.
//

import UIKit
import ViewModel
import KKNetwork
import KKDataLayer

class ViewController: UIViewController {
    
    private var viewModel: MovieListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MovieListViewModel(
            networkService: NetworkService(),
            dataService: FileDataService()
        )
        viewModel.didFetchMovies = { movies in
            // logic to update UI has to be handled here
            print(movies)
        }
        
        viewModel.didRecieveError = { error in
            // Error handling has to be handled here
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.showMovieList()
    }

}

