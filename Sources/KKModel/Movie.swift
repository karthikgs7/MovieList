//
//  File.swift
//  
//
//  Created by Karthikeyan Ganesan on 19/12/21.
//

import Foundation

public struct Movie: Codable {
    public let id: Int
    public let title: String
    public let rating: Double
    public let thumbnailImagePath: String
    
    enum CodingKeys: String, CodingKey {
        case id, title
        case rating = "vote_average"
        case thumbnailImagePath = "poster_path"
    }
}
