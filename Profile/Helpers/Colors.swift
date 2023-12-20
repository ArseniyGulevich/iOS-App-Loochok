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
    case lightGray = "#F3F3F2"
    
    var uiColor: UIColor {
        return UIColor(rgb: self.rawValue)!
    }
}
