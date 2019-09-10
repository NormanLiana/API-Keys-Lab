//
//  Artist.swift
//  Song-Search-API-Keys-Lab
//
//  Created by Liana Norman on 9/9/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import Foundation

struct ArtistWrapper: Codable {
    let message: MessageWrapper
}

struct MessageWrapper: Codable {
    let body: BodyWrapper
}

struct BodyWrapper: Codable {
    let trackList: [Tracks]
}

struct Tracks: Codable {
    let track: Track
}

struct Track: Codable {
    let song: String
    let trackID: Int
    
    private enum CodingKeys: String, CodingKey {
        case song = "track_name"
        case trackID = "track_id"
    }

}

