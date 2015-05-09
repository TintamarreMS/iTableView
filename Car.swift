//
//  Car.swift
//  iTableView
//
//  Created by Martin Guilbaud on 07/05/2015.
//  Copyright (c) 2015 tintamarre. All rights reserved.
//

import Foundation
import CoreData

class Car: NSManagedObject {

    @NSManaged var carBrandModel: String
    @NSManaged var carDescription: String

    class func createInManagedObjectContext(moc: NSManagedObjectContext, vBrandModel: String, vDescription: String) -> Car {
        let newCar = NSEntityDescription.insertNewObjectForEntityForName("Car", inManagedObjectContext: moc) as! Car
        newCar.carBrandModel = vBrandModel
        newCar.carDescription = vDescription
        
        return newCar
    }
    
}
