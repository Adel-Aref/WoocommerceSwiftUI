//
//  Typography.swift
//  woocommerceSwiftUI
//
//  Created by Adel Aref on 27/02/2024.
//

import UIKit

enum Font: String {
    
    case almaraiBold              =  "Almarai-Bold"
    case poppinsLight             =  "Poppins-Light"
    case poppinsMedium            =  "Poppins-Medium"
    case poppinsRegular           =  "Poppins-Regular"
    case poppinsSemiBold          =  "Poppins-SemiBold"
    
    var name: String {
        return self.rawValue
    }
}

extension UIFont {
    
    var isBold: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitBold)
    }
    
    var isItalic: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    }
    
    static func appFont(ofSize size: CGFloat, weight: Weight) -> UIFont? {
        return UIFont.systemFont(ofSize: size, weight: weight).appFont()
    }
    
    func appFont() -> UIFont?  {
        
        var fontName = ""
        
        switch weight {
        case .ultraLight, .thin, .light:
            fontName = Font.poppinsLight.name
        case .semibold:
            fontName = Font.poppinsSemiBold.name
        case .medium:
            fontName = Font.poppinsMedium.name
        case .bold, .black, .heavy:
            fontName = Font.almaraiBold.name
        default:
            fontName = Font.poppinsRegular.name
        }
        return UIFont.init(name: fontName, size: self.pointSize)
    }
    
    var weight: UIFont.Weight {
        
        let fontAttributeKey = UIFontDescriptor.AttributeName.init(rawValue: "NSCTFontUIUsageAttribute")
        
        guard let fontWeight = self.fontDescriptor.fontAttributes[fontAttributeKey] as? String else {
            return UIFont.Weight.regular
        }
        
        switch fontWeight {
            
        case "CTFontBoldUsage":
            return UIFont.Weight.bold
            
        case "CTFontBlackUsage":
            return UIFont.Weight.black
            
        case "CTFontHeavyUsage":
            return UIFont.Weight.heavy
            
        case "CTFontUltraLightUsage":
            return UIFont.Weight.ultraLight
            
        case "CTFontThinUsage":
            return UIFont.Weight.thin
            
        case "CTFontLightUsage":
            return UIFont.Weight.light
            
        case "CTFontMediumUsage":
            return UIFont.Weight.medium
            
        case "CTFontDemiUsage", "CTFontEmphasizedUsage":
            return UIFont.Weight.semibold
            
        case "CTFontRegularUsage":
            return UIFont.Weight.regular
            
        default:
            return UIFont.Weight.regular
        }
    }
}

