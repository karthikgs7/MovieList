//
//  File.swift
//  
//
//  Created by Karthikeyan Ganesan on 19/12/21.
//

import Foundation
import KKModel

public final class FileDataService: DataServiceType {
    
    private var filePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last!.appendingPathComponent("playlists")
    
    public init() {}
    
    public func savePlaylists(_ playlists: [Playlist]) throws {
        if FileManager.default.fileExists(atPath: filePath.path) {
            try FileManager.default.removeItem(at: filePath)
        }
        let data = try JSONEncoder().encode(playlists)
        try data.write(to: filePath)
    }
    
    public func getPlaylists(_ completion: ([Playlist]) -> Void) throws {
        guard FileManager.default.fileExists(atPath: filePath.path) else {
            completion([])
            return
        }
        let data = try Data(contentsOf: filePath)
        let playlists = try JSONDecoder().decode([Playlist].self, from: data)
        completion(playlists)
    }
}
