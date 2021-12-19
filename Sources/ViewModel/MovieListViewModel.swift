//
//  File.swift
//  
//
//  Created by Karthikeyan Ganesan on 19/12/21.
//

import Foundation
import KKNetwork
import KKModel
import KKDataLayer

public final class MovieListViewModel {
    
    public var didFetchMovies: (([Movie]) -> Void)?
    public var didRecieveError: ((Error) -> Void)?
    
    let networkService: NetworkServiceType
    let dataSercice: DataServiceType
    
    public init(
        networkService: NetworkServiceType,
        dataService: DataServiceType
    ) {
        self.networkService = networkService
        self.dataSercice = dataService
    }
}

// MARK: ViewModel Inputs
public extension MovieListViewModel {
    
    func showMovieList() {
        networkService.getMovies { [weak self] result in
            switch result {
            case let .success(movies):
                self?.didFetchMovies?(movies)
            case let .failure(error):
                self?.didRecieveError?(error)
            }
        }
    }
    
    func showPlayList() {
        
    }
    
    func showMovieList(for query: String) {
        
    }
    
    func addPlayList() {
        
    }
    
}
