//
//  CloningContact.swift
//  Prototype
//
//  Created by Chukwuyenum Opone on 22/02/2020.
//  Copyright © 2020 Chukwuyenum Opone. All rights reserved.
//

import Foundation

class CloningContact: NSCopying {
    
    func clone() -> CloningContact {
        //invoke copy(with:) method
        return self.copy() as! CloningContact
    }
    
    public func copy(with zone: NSZone? = nil) -> Any {
        //this method returns a new instance and passes the property values of the object to a newly created one
        return CloningContact(firstName: self.firstName, lastName: self.lastName, address: self.address)
    }
    //declare class data
    var firstName:String
    var lastName:String
    //address gets data from the Adress class
    var address = Address(street: "street", city: "city", zip: "zip")//call address class
    
    //initialize class
    init(firstName:String,lastName:String,address:Address) {
        //use Address class as the datatype for address
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
    }
}

class Address: NSCopying {
    
    public func copy(with zone: NSZone? = nil) -> Any {
        return Address(street: self.street, city: self.city, zip: self.zip)
    }
    var street:String
    var city:String
    var zip:String
    
    init(street:String,city:String,zip:String) {
        self.street = street
        self.city = city
        self.zip = zip
    }
}

//CustomStringConvertible allows us to provide
//a human friendly description for our class
extension CloningContact:CustomStringConvertible {
    public var description: String {
        //when print statement is used this is how the data is displayed in terminal
        return "CloningContact(firstName: \"\(firstName)\", lastName: \"\(lastName)\", address: \"\(address)\")"
    }
}

//CustomStringConvertible allows us to provide
//a human friendly description for our class
extension Address:CustomStringConvertible {
    public var description: String {
        //when print statement is used this is how the data is displayed in terminal
        return "street: \"\(street)\", city: \"\(city)\", zip: \"\(zip)\")"
    }
}
