//
//  Repository.swift
//  woocommerceSwiftUI
//
//  Created by Adel Aref on 27/02/2024.
//

import Foundation
protocol Repository {
    associatedtype Service

    var service: Service { get set }
    init(service: Service)
}
