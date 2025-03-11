//
//  UIFont + Ext.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 11/3/25.
//

import UIKit

extension UIFont {
    enum Roboto {
        enum black {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.black, size: size) ?? UIFont()
            }
        }
        
        enum baclItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.baclItalic, size: size) ?? UIFont()
            }
        }
        
        enum bold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.bold, size: size) ?? UIFont()
            }
        }
        
        enum boldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.boldItalic, size: size) ?? UIFont()
            }
        }
        
        enum extraBold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.extraBold, size: size) ?? UIFont()
            }
        }
        
        enum extraBoldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.extraBoldItalic, size: size) ?? UIFont()
            }
        }
        
        enum extraLight {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.extraLight, size: size) ?? UIFont()
            }
        }
        
        enum extraLightItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.extraLightItalic, size: size) ?? UIFont()
            }
        }
        
        enum italic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.italic, size: size) ?? UIFont()
            }
        }
        
        enum light {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.light, size: size) ?? UIFont()
            }
        }
        
        enum lightItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.lightItalic, size: size) ?? UIFont()
            }
        }
        
        enum medium {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.medium, size: size) ?? UIFont()
            }
        }
        
        enum mediumItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.mediumItalic, size: size) ?? UIFont()
            }
        }
        
        enum regular {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.regular, size: size) ?? UIFont()
            }
        }
        
        enum semiBold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.semiBold, size: size) ?? UIFont()
            }
        }
        
        enum semiBoldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.semiBoldItalic, size: size) ?? UIFont()
            }
        }
        
        enum thin {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.thin, size: size) ?? UIFont()
            }
        }
        
        enum thinItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.thinItalic, size: size) ?? UIFont()
            }
        }
    }
}

private extension UIFont {
    enum Constants {
        enum Roboto {
            static let black = "Roboto-Black"
            static let baclItalic = "Roboto-BlackItalic"
            static let bold = "Roboto-Bold"
            static let boldItalic = "Roboto-BoldItalic"
            static let extraBold = "Roboto-ExtraBold"
            static let extraBoldItalic = "Roboto-ExtraBoldItalic"
            static let extraLight = "Roboto-ExtraLight"
            static let extraLightItalic = "Roboto-ExtraLightItalic"
            static let italic = "Roboto-Italic"
            static let light = "Roboto-Light"
            static let lightItalic = "Roboto-LightItalic"
            static let medium = "Roboto-Medium"
            static let mediumItalic = "Roboto-MediumItalic"
            static let regular = "Roboto-Regular"
            static let semiBold = "Roboto-SemiBold"
            static let semiBoldItalic = "Roboto-SemiBoldItalic"
            static let thin = "Roboto-Thin"
            static let thinItalic = "Roboto-ThinItalic"
            
        }
    }
}
