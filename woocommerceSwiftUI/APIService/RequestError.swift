//
//  RequestError.swift
//  woocommerceSwiftUI
//
//  Created by Adel Aref on 27/02/2024.
//

import Foundation

enum RequestError: Error {
    case decode
    case invalidURL
    case noResponse
    case unauthorised
    case offline
    case unknown

    var customMessage: String {
        switch self {
        case .decode:
            return "Decode error"
        case .unauthorised:
            return "Session expired"
        default:
            return "Unknown error"
        }
    }
}
