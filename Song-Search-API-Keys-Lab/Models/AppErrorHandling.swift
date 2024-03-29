//
//  AppErrorHandling.swift
//  Song-Search-API-Keys-Lab
//
//  Created by Liana Norman on 9/9/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import Foundation

enum AppError: Error {
    case badDataError
    case badDecoderError
    case badJSONError
    case networkError
    case badHTTPResponse
    case badURL
    case noDataError
    // This is a 404 status code
    case notFound
    // Below is 401 and 403
    case unauthorized
    case other(rawError: String)
}
