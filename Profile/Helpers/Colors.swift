//
//  Colors.swift
//  Profile
//
import UIKit

enum Colors: String, CaseIterable, Codable, Equatable {
    case white = "#FCFCFC"
    case black = "#0B0B0B"
    case lightYellow = "#FFC700"
    case darkYellow = "#D1A300"
    case lightGray1 = "#F3F3F2"
    case lightGray2 = "#DBDBDB"
    case gray = "5F5F5F"
    
    var uiColor: UIColor {
        return UIColor(rgb: self.rawValue)!
    }
}
