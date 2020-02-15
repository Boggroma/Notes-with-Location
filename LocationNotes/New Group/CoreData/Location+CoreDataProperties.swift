//
//  Location+CoreDataProperties.swift
//  LocationNotes
//
//  Created by мак on 23.01.2020.
//  Copyright © 2020 viktorsafonov. All rights reserved.
//
//

import Foundation
import CoreData


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var lat: Double
    @NSManaged public var lon: Double
    @NSManaged public var note: Note?

}
