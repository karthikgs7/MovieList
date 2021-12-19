//
//  File.swift
//  
//
//  Created by Karthikeyan Ganesan on 19/12/21.
//

import Foundation
import KKModel

public protocol DataServiceType {
    func savePlaylists(_ playlists: [Playlist]) throws
    func getPlaylists(_ completion: ([Playlist]) -> Void) throws
}
