//
//  CoreDataModule.swift
//  Stack Report
//
//  Created by Cyril Garcia on 5/10/17.
//  Copyright © 2017 ByCyril. All rights reserved.
//

import UIKit
import CoreData

public class CoreDataModule: Module {
    
    private var entity: String!
    
    public init(entityName: String) {
        entity = entityName
    }
    
    public func push<V>(values: [V], keys: [String]) {
        
        
        let managedContext = managedObjectContext
        let entity = NSEntityDescription.entity(forEntityName: "\(self.entity!)", in: managedContext)
        let item = NSManagedObject(entity: entity!, insertInto: managedContext)
        
        for i in 0..<keys.count {
            item.setValue(values[i], forKey: keys[i])
        }
        
        try? managedContext.save()
    }
    
    public func retrieveData() -> [NSManagedObject]{

        let managedContext = managedObjectContext
        let fetchrequest = NSFetchRequest<NSFetchRequestResult>(entityName: "\(self.entity!)")
        
        let results = try? managedContext.fetch(fetchrequest) as! [NSManagedObject]
        return results!

    }
    
    public func retrieveAndSort(byKey: String, ascending: Bool) -> [NSManagedObject] {
        
        let managedContext = managedObjectContext
        let fetchrequest = NSFetchRequest<NSFetchRequestResult>(entityName: "\(self.entity!)")
        
        let sectionSortDescriptor = NSSortDescriptor(key: byKey, ascending: ascending)
        let sortDescriptor = [sectionSortDescriptor]
        fetchrequest.sortDescriptors = sortDescriptor
        
        let results = try? managedContext.fetch(fetchrequest) as! [NSManagedObject]
        return results!
       
    }
    
    public func remove(object: [NSManagedObject], index: Int) {

        let managedContext = managedObjectContext
        managedContext.delete(object[index])
        try? managedContext.save()

    }
}
