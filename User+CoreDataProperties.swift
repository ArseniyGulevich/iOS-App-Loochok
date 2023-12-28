//
//  User+CoreDataProperties.swift
//  Profile
//  Created by Арсений Гулевич  on 28.12.2023.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: Int16

}

extension User : Identifiable {

}
