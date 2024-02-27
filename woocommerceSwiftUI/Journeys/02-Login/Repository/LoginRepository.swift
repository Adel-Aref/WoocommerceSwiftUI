//
//  LoginRepository.swift
//  woocommerceSwiftUI
//
//  Created by Adel Aref on 27/02/2024.
//

import Foundation

class LoginRepository: Repository {

    typealias Service = LoginClient

    var service: Service

    required init(service: LoginClient) {
        self.service = service
    }

    func login(username: String, password: String) async throws -> UserModel {
        return try await service.login(with: username, and: password)
    }
}
