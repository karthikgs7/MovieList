//
//  File.swift
//  
//
//  Created by Karthikeyan Ganesan on 19/12/21.
//

import Foundation
import KKModel

public protocol NetworkServiceType: AnyObject {
    func getMovies(_ completion: (Result<[Movie], Error>) -> Void)
}

public enum NetworkServiceError: Error {
    case fileNotFound
    case unknow
}

public final class NetworkService: NetworkServiceType {
    
    public init() {}
    
    public func getMovies(_ completion: (Result<[Movie], Error>) -> Void) {
        guard
            let jsonFilePath = Bundle.module.path(forResource: "movies", ofType: "json") else {
                completion(.failure(NetworkServiceError.fileNotFound))
            return
        }
        do {
            let url = URL(fileURLWithPath: jsonFilePath)
            let data = try Data(contentsOf: url)
            let movieListResponse = try JSONDecoder().decode(MovieListResponse.self, from: data)
            completion(.success(movieListResponse.results))
        } catch {
            completion(.failure(error))
        }
        
    }
}
