//
//  File.swift
//  
//
//  Created by Karthikeyan Ganesan on 19/12/21.
//

import Foundation

public struct Playlist: Codable {
    let name: String
    private(set) var movies: [Movie]
    
    public init(
        name: String,
        movies: [Movie]
    ) {
        self.name = name
        self.movies = movies
    }
}

public extension Playlist {
    
    mutating func addMovie(_ movie: Movie) {
        movies.append(movie)
    }
}
