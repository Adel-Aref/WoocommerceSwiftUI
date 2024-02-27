//
//  Colors.swift
//  woocommerceSwiftUI
//
//  Created by Adel Aref on 27/02/2024.
//

import UIKit

struct DesignSystem {
    
}

extension DesignSystem {
    
    enum Colors: String {
        case Primary = "Primary"
        case Secondary = "Secondary"
        case Gray = "Gray"
        
        var color: UIColor {
            return UIColor(named: self.rawValue)!
        }
    }
}
