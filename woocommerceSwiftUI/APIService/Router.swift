//
//  Router.swift
//  woocommerceSwiftUI
//
//  Created by Adel Aref on 27/02/2024.
//

import Foundation

enum Router: Equatable {
    case login(username: String = "test@test.com", password: String = "P@ssw0rd")
    
    var url: String {scheme + "://" + host + path}
    var scheme: String {API.scheme}
    var host: String {API.URL}
    
    var path: String {
        switch self {
        case .login:
            return "/login"
            
        }
    }
    
    var parameters: [URLQueryItem]? {
        switch self {
        case .login(let username, let password):
            return [URLQueryItem(name: "ts", value: API.timeStamp),
                    URLQueryItem(name: "apikey", value: API.publicKey),
                    URLQueryItem(name: "password", value: password),
                    URLQueryItem(name: "username", value: username )]
        }
    }
    
    var method: String {
        switch self {
        case .login:
            return "POST"
        }
    }
    
}

struct API {
    static var publicKey: String { "Enter your PUBLIC KEY" }
    static var privateKey: String { "Enter your PRIVATE KEY" }
    static var timeStamp: String { formatter.string(from: Date()) }
    static var schemeURL: String {scheme + "://" + URL}
    static var scheme: String {
        return PlistEnvironment.scheme
    }
    static var URL: String {
        PlistEnvironment.baseURL
    }
    
    private static let formatter: DateFormatter = {
        let form = DateFormatter()
        form.dateFormat = "yyyyMMddHHmmss"
        return form
    }()
    
}
