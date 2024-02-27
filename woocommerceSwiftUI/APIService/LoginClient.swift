//
//  LoginClient.swift
//  woocommerceSwiftUI
//
//  Created by Adel Aref on 27/02/2024.
//

import Foundation
protocol LoginClient {
    func login(with username: String, and password: String) async throws -> UserModel
}

struct LoginService: APIClient, LoginClient {
    func login(with username: String = "0", and password: String = "10") async throws -> UserModel {
        return try await sendRequest(endpoint: .login(username: password), responseModel: UserModel.self)
    }
}

