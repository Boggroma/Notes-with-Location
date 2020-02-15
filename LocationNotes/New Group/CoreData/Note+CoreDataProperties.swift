//
//  Note+CoreDataProperties.swift
//  LocationNotes
//
//  Created by мак on 23.01.2020.
//  Copyright © 2020 viktorsafonov. All rights reserved.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var name: String?
    @NSManaged public var textDescription: String?
    @NSManaged public var imageSmall: NSData?
    @NSManaged public var dateUpdate: NSDate?
    @NSManaged public var folder: Folder?
    @NSManaged public var location: Location?
    @NSManaged public var image: ImageNote?

}
