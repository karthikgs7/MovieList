//
//  File.swift
//  
//
//  Created by Karthikeyan Ganesan on 19/12/21.
//

import Foundation

public struct MovieListResponse: Codable {
    public let page: Int
    public let results: [Movie]
    public let totalPages: Int
    public let totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
