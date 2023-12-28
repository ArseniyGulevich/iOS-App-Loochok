//
//  RandomValues.swift
//  Profile
//
//  Created by Арсений Гулевич  on 28.12.2023.
//

import Foundation

struct RandomValues {
    static func getRandomId() -> String {
        let randomString = UUID().uuidString
        return randomString.replacingOccurrences(of: "-", with: "")
    }
}
