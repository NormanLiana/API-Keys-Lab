//
//  ArtistAPIClient.swift
//  Song-Search-API-Keys-Lab
//
//  Created by Liana Norman on 9/10/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import Foundation

class ArtistAPIClient {
    private init() {}
    
    static let shared = ArtistAPIClient()
    
    func getSongs(completionHandler: @escaping (Result<[Tracks], AppError>) -> () ) {
        let urlStr = "http://api.musixmatch.com/ws/1.1/track.search?q_track_artist=snoopdog&apikey=981713473e1e63160f463704d05929c7"
        NetworkManager.shared.fetchData(urlString: urlStr) { (result) in
            switch result {
            case .failure(let error):
                completionHandler(.failure(error))
            case .success(let data):
                do {
                    let artistInfo = try JSONDecoder().decode(ArtistWrapper.self, from: data)
                    completionHandler(.success(artistInfo.message.body.trackList))
                } catch {
                    print(error)
                    completionHandler(.failure(.noDataError))
                    
                }
            
            }
        }
      
    }
}
