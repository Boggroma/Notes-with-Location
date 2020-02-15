//
//  Folder+CoreDataClass.swift
//  LocationNotes
//
//  Created by мак on 23.01.2020.
//  Copyright © 2020 viktorsafonov. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Folder)
public class Folder: NSManagedObject {
    class func newFolder (name: String) -> Folder {
        let folder = Folder(context: CoreDataManager.sharedInstance.managedObjectContext)
        folder.name = name
        
        folder.dateUpdate = NSDate()
        
        return folder
    }
    
    func addNote () -> Note {
        let newNote = Note(context: CoreDataManager.sharedInstance.managedObjectContext)
        
        newNote.folder = self
        newNote.dateUpdate = NSDate()
        return newNote
    }
    
    var notesSorted: [Note] {
        let sortDescriptor = NSSortDescriptor(key: "dateUpdate", ascending: false)
        return self.notes?.sortedArray(using: [sortDescriptor]) as! [Note]
    }
}
